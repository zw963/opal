# frozen_string_literal: true

TIME = Time.now

require 'etc'

module Opal
  class Builder
    module Prefork
      private

      class ForkSet < Array
        def initialize(count, &block)
          super([])

          @count, @block = count, block

          create_fork
        end

        def get_events(queue_length)
          # Wait for anything to happen:
          # - Either any of our workers return some data
          # - Or any workers become ready to receive data
          #   - But only if we have enough work for them
          ios = IO.select(
            map(&:read_io),
            sample(queue_length).map(&:write_io),
            []
          )
          return [[], []] unless ios

          events = ios[0].map do |io|
            io = from_io(io, :read_io)
            [io, *io.recv]
          end

          idles = ios[1].map do |io|
            from_io(io, :write_io)
          end

          # Progressively create forks, because we may not need all
          # the workers at the time. The number 6 was picked due to
          # some trial and error on a Ryzen machine.
          #
          # Do note that prefork may happen more than once.
          create_fork if length < @count && rand(6) == 1

          [events, idles]
        end

        def create_fork
          self << Fork.new(self, &@block)
        end

        def from_io(io, type)
          find { |i| i.__send__(type) == io }
        end

        def close
          each(&:close)
        end

        def wait
          each(&:wait)
        end
      end

      class Fork
        def initialize(forkset)
          @parent_read, @child_write = IO.pipe
          @child_read, @parent_write = IO.pipe
          @forkset = forkset
          @in_fork = false

          @pid = fork do
            @in_fork = true

            begin
              @parent_read.close
              @parent_write.close

              yield(self)
            rescue => error
              send(:exception, error)
            ensure
              send(:close) unless write_io.closed?
              @child_write.close
            end
          end

          @child_read.close
          @child_write.close
        end

        def close
          send(:close)
          @parent_write.close
        end

        def goodbye
          read_io.close unless read_io.closed?
        end

        def send_message(io, msg)
          msg = Marshal.dump(msg)
          io.write([msg.length].pack('Q') + msg)
        end

        def recv_message(io)
          length, = *io.read(8).unpack('Q')
          Marshal.load(io.read(length))
        end

        def fork?
          @in_fork
        end

        def read_io
          fork? ? @child_read : @parent_read
        end

        def write_io
          fork? ? @child_write : @parent_write
        end

        def eof?
          write_io.closed?
        end

        def send(*msg)
          send_message(write_io, msg)
        end

        def recv
          recv_message(read_io)
        end

        def wait
          Process.waitpid(@pid, Process::WNOHANG)
        end
      end

      # By default we use 3/4 of CPU threads detected.
      def fork_count
        ENV['OPAL_THREADS']&.to_i || (Etc.nprocessors * 3 / 4.0).ceil
      end

      def prefork
        @forks = ForkSet.new(fork_count, &method(:fork_entrypoint))
      end

      def fork_entrypoint(io)
        @in_fork = io

        until io.eof?
          $0 = 'opal-builder: idle'

          type, *args = *io.recv
          case type
          when :compile
            rel_path, req, options = *args
            $0 = "opal-builder: #{req}"
            begin
              asset = process_require_threadsafely(req, options)
              io.send(:new_asset, asset)
            rescue MissingRequire => error
              io.send(:missing_require_exception, rel_path, error)
            end
          when :close
            io.goodbye
            break
          end
        end
      end

      def prefork_reactor(rel_path, requires, options)
        prefork

        queue = requires.map { |i| [rel_path, i, options] }

        awaiting = 0

        loop do
          events, idles = @forks.get_events(queue.length)

          idles.each do |io|
            break if queue.empty?

            rel_path, req, options = *queue.pop

            next if already_processed.include?(req)
            awaiting += 1
            already_processed << req
            io.send(:compile, rel_path, req, options)
          end

          events.each do |io, type, *args|
            case type
            when :new_requires
              rel_path, requires, options = *args
              requires.each do |i|
                queue << [rel_path, i, options]
              end
            when :new_asset
              asset, = *args
              if !asset
                # Do nothing, we received a nil which is expected.
              elsif asset.filename == 'corelib/runtime.js'
                # Opal runtime should go first... the rest can go their way.
                processed.unshift(asset)
              else
                processed << asset
              end
              awaiting -= 1
            when :missing_require_exception
              rel_path, error = *args
              raise error, "A file required by #{rel_path.inspect} wasn't found.\n#{error.message}", error.backtrace
            when :exception
              error, = *args
              raise error
            when :close
              io.goodbye
            end
          end

          break if awaiting == 0 && queue.empty?
        end
      ensure
        @forks.close
        @forks.wait
      end

      # We hook into the process_requires method
      def process_requires(rel_path, requires, options)
        return if requires.empty?

        if @in_fork
          io = @in_fork
          io.send(:new_requires, rel_path, requires, options)
        else
          prefork_reactor(rel_path, requires, options)
        end
      end
    end
  end
end
