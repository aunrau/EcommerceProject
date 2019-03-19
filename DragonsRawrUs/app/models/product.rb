class Product < ApplicationRecord
    has_many :products_orders

    has_many :orders, through: :products_orders

    validates :price, numericality: true
end
