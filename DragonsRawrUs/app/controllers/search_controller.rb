class SearchController < ApplicationController
  def results
    @query = params[:q]
    # @products = Product.where('category_id LIKE ?', "%#{@uery}%")
    # @categories = Product.uniq.pluck(:category)
    @products = Product.where('category_id LIKE ?', "%#{@uery}%")
  end
end
