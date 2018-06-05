module Moltin
  module Resources
    class Customers < Resources::Base
      private

      # Private: Gives the type of the current Resources class.
      def type
        'customer'
      end

      # Private: Gives the model class to use to instantiate the responses data.
      def model_name
        Moltin::Models::Customer
      end

      # Private: Gives the URI to call for the current Resources class.
      def uri
        "#{@config.version}/customers"
      end
    end
  end
end
