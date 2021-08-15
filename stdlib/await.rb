warn 'Await functionality is a technology preview, which means it may change its behavior ' \
     'in the future unless this warning is removed. If you are interested in this part, ' \
     'please make sure you track the async/await/promises tag on Opal issues: ' \
     'https://github.com/opal/opal/issues?q=label%3Aasync%2Fawait%2Fpromises'

require 'promise/v2'

class Array
  def map_await(&block)
    i = 0
    results = []
    while i < `self.length`
      results << yield(self[i]).await
      i += 1
    end
    results
  end

  def each_await(&block)
    map_await(&block).await
    self
  end
end

module Enumerable
  def each_async(&block)
    PromiseV2.when(*map(&block)).await
  end
end

module Kernel
  def async_load(file)
    file = Opal.coerce_to!(file, String, :to_str)
    `Opal.load(#{file}, true)`.await
  end

  # Overwrite Kernel.exit to be async-capable.
  def exit(status = true)
    $__at_exit__ ||= []

    until $__at_exit__.empty?
      block = $__at_exit__.pop
      block.call.await
    end

    %x{
      if (status.$$is_boolean) {
        status = status ? 0 : 1;
      } else {
        status = $coerce_to(status, #{Integer}, 'to_int')
      }

      Opal.exit(status);
    }
    nil
  end
end
