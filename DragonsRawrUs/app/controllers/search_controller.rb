class SearchController < ApplicationController
  def results
    @query = params[:q]
    @products = Product.where('category_id LIKE ?', "%#{@uery}%")
  end
end
