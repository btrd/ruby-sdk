module Moltin
  module Models
    class Address < Models::Base
      attributes :id, :type, :first_name, :last_name, :name, :phone_number, :instructions, :company_name, :line_1, :line_2, :city, :county, :postcode, :country
    end
  end
end
