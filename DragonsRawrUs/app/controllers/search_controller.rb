class SearchController < ApplicationController
  def results
    @query = params[:q]
    @category = params[:category_id]

    if @category.empty?
      @results_found = Product.where('product_name LIKE ?', "%#{@query}%")
    else
      @results_found = Product.where('(product_name LIKE ?) AND category_id = ?', "%#{@query}%", "#{@category}")
    end
    return @results_found
  end
end
