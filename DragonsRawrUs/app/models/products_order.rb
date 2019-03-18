class ProductsOrder < ApplicationRecord
    validates :purchase_price, numericality: true
end
