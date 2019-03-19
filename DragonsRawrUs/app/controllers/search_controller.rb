class SearchController < ApplicationController
  def results
    @query = params[:q]
    @products = Product.where('product_name LIKE ?', "%#{@uery}%")
  end
end
