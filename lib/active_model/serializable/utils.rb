module ActiveModel
  module Serializable
    module Utils
      extend self

      def _const_get(const)
        begin
          Object.const_get(const)
        rescue NameError
          const.safe_constantize
        end
      end
    end
  end
end