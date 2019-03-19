class Customer < ApplicationRecord
    has_many :orders

    validates :name, :address, :city, :country, presence: true
end
