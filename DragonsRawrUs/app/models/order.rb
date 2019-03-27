class Order < ApplicationRecord
    belongs_to :customer
    belongs_to :order_status

    has_many :order_items
    has_many :products_orders
    has_many :products, through: :products_orders

    before_create :set_order_status
    before_save :update_subtotal

    # validates :order_date, presence: true

    def subtotal
        order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
    end

    private

      def set_order_status
        self.order_status_id = 1
      end

      def update_subtotal
        self[:subtotal] = subtotal
      end
    end

