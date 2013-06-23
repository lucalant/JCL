class DesignerController < ApplicationController
  def index
    @all_designers = Designer.all
  end

  def works

  end

  def about
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
    /.*
    @home_product_designer_list = HomeProductDesigners.where("designer_id = ?", params[:id])
    if @home_product_designer_list != nil
      @home_products = Array.new
      @home_product_designer_list.each do |home_product_designer|
        @home_product = Event.find(home_product_designer.home_product_id)
        @home_products.push @home_product
      end
    end

    @workspace_designer_list = WorkspaceDesigners.where("designer_id = ?", params[:id])
    if @workspace_designer_list != nil
      @workspaces = Array.new
      @workspace_designer_list.each do |workspace_designer|
        @workspace = Event.find(workspace_designer.workspace_id)
        @workspaces.push @workspace
      end
    end
     *./
  end



  def designer_params
    params.require(:name,:surname,:img_url).permit(:description, :did,:designer_id)
  end
end