module Moltin
  module Models
    class Customer < Models::Base
      attributes :type, :id, :name, :email, :password
    end
  end
end
