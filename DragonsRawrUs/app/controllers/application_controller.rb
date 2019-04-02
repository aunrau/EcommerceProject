class ApplicationController < ActionController::Base
  before_action :authenticate_customer!
    protect_from_forgery with: :exception
    helper_method :current_order
  before_action :init_cart
    def current_order
      if !session[:order_id].nil?
        Order.find(session[:order_id])
      else
        Order.new
      end
    end

  def init_cart
    session[:cart] ||= []
  end

  # def current_customer
  #   @customer = Customer.find_by(id: session[:customer_id])
  # end
end
