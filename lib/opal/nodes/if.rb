# frozen_string_literal: true

require 'opal/nodes/base'

module Opal
  module Nodes
    class IfNode < Base
      handle :if

      children :test, :true_body, :false_body

      def compile
        test_body = js_truthy(test)

        truthy = self.truthy
        falsy = self.falsy

        push 'if (', test_body, ') {'

        # skip if-body if no truthy sexp
        indent { line stmt(truthy) } if truthy

        if falsy
          if falsy.type == :if
            line '} else ', stmt(falsy)
          else
            line '} else {'
            indent do
              line stmt(falsy)
            end

            line '}'
          end
        else
          push '}'
        end

        wrap '(function() {', '})()' if needs_wrapper?
      end

      def truthy
        needs_wrapper? ? compiler.returns(true_body || s(:nil)) : true_body
      end

      def falsy
        needs_wrapper? ? compiler.returns(false_body || s(:nil)) : false_body
      end

      def needs_wrapper?
        expr? || recv?
      end
    end

    class SimpleIfNode < IfNode
      handle :simple_if

      def compile
        test_body = js_truthy(test)

        push "((", test_body, ") ? (", expr(true_body || s(:nil)), ") : (", expr(false_body || s(:nil)), "))"
      end
    end

    class IFlipFlop < Base
      handle :iflipflop

      def compile
        # Unsupported
        # Always compiles to 'true' to not break generated JS
        push 'true'
      end
    end

    class EFlipFlop < Base
      handle :eflipflop

      def compile
        # Unsupported
        # Always compiles to 'true' to not break generated JS
        push 'true'
      end
    end
  end
end
