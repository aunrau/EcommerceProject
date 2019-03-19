class Order < ApplicationRecord
    belongs to :customer
    has_many :products

    validates :order_date, presence: true
end
