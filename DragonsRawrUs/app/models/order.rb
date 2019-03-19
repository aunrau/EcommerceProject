class Order < ApplicationRecord
    belongs_to :customer
    has_many :products_orders

    has_many :products, through: :products_orders

    validates :order_date, presence: true
end
