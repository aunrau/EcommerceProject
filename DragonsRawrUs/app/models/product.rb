class Product < ApplicationRecord
    belongs_to :category

    has_many :products_orders
    has_many :orders, through: :products_orders
    has_many :order_items

    validates :price, numericality: true

    mount_uploader :image, ImageUploader

    default_scope { where(active: true) }
end
