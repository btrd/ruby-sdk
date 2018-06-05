module Moltin
  module Resources
    class Addresses < Resources::Base
      private

      # Private: Gives the type of the current Resources class.
      def type
        'address'
      end

      # Private: Gives the model class to use to instantiate the responses data.
      def model_name
        Moltin::Models::Address
      end

      # Private: Gives the URI to call for the current Resources class.
      def uri
        "#{@config.version}/customers/#{options[:customer_id]}/addresses"
      end
    end
  end
end
