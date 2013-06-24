class DesignerController < ApplicationController
  def index
    @all_designers = Designer.all
  end

  def works

  end

  def home_products_of_designer
    @designer = Designer.find(params[:id])
    @home_product_designer_list = HomeProductsDesigners.where("designer_id = ?", params[:id])
    if @home_product_designer_list != nil
      @home_products = Array.new
      @home_product_designer_list.each do |home_product_designer|
        @home_product = HomeProduct.find(home_product_designer.home_product_id)
        @home_products.push @home_product
      end
    end
  end

  def workspaces_of_designer
    @designer = Designer.find(params[:id])
    @workspaces = Workspace.where("designer_id = ?", params[:id])
  end

  def about
    @all_designers = Designer.all
    @designer = Designer.find(params[:id])
    @designerImage = "/designer/"+ @designer.img_url
    @event_designer_list = EventsDesigners.where("designer_id = ?", params[:id])
    if @event_designer_list != nil
      @events = Array.new
      @event_designer_list.each do |event_designer|
        @event = Event.find(event_designer.event_id)
        @events.push @event
      end
    end
  end



  def designer_params
    params.require(:name,:surname,:img_url).permit(:description, :did,:designer_id)
  end
end