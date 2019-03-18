class Product < ApplicationRecord
    validates :price, numericality: true
end
