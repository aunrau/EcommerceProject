class PagesController < InheritedResources::Base

  def static
    @page = Page.find_by(permalink: params[:permalink])
  end

  private

    def page_params
      params.require(:page).permit(:title, :content, :permalink)
    end
end

