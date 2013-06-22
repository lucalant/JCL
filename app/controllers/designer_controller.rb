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

  end

  def full_string
    "#{name} #{lastname}"
  end

  def designer_params
    params.require(:name,:surname,:img_url).permit(:description, :did,:designer_id)
  end
end