class CartsController < ApplicationController
  before_action :fetch_items, only: [:new]
  before_action :initialize_order, only: [:create]
  before_action :complete_order, only: [:create]

  def show
    @order_items = current_order.order_items
  end
 def new
    @taxrate = current_user.province.gst + current_user.province.pst + @current_user.province.hst
    @tax = @before_price * (0.01 * @taxrate)
    @total_price = @before_price + @tax
  end

  def create
    if @order.save
      # If user saves in the db successfully:
      flash[:notice] = 'Your order was successfully created.'
      session[:cart] = []
      redirect_to root_path
    else
      # If user fails model validation - probably a bad password or duplicate email:
      flash.now.alert = "Something went wrong, your order could not be created."
      render :new
    end
  end

  def fetch_items
    @order = Order.new
    @cart = ProductItem.find(session[:cart])
    @before_price = 0
    @cart.each do |o|
      o.quantity.times do
        @before_price += o.product.price
      end
    end
  end

  def initialize_order
    @total_price = params[:total_price].to_f
    @tax = params[:tax].to_f
    @order = Order.new(total_price: @total_price,
                       tax: @tax)
  end

  def complete_order
    @order.product_items << ProductItem.find(session[:cart])
    @order.customer = Customer.find_by(id: session[:customer_id])
  end

  def clear
    flash[:notice] = 'Cart Cleared.'
    session[:cart] = []
    redirect_to root_path
  end
end
