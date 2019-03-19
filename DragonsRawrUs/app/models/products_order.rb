class ProductsOrder < ApplicationRecord
    belongs_to :order
    belongs_to :product

    validates :purchase_price, numericality: true
end
