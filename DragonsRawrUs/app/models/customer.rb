class Customer < ApplicationRecord
    validates :name, :address, :city, :country, presence: true
end
