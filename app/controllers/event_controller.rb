
class EventController < ApplicationController
  def index
    if(params[:d_id])
      @designer = Designer.find(params[:d_id])
      @events = @designer.events.order('title ASC')
    else
      @events = Event.order('title ASC')
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end


  def show
    @event = Event.find(params[:e_id])
  end

  def create
    image_io = params[:event][:img_url]
    File.open(Rails.root.join('public','consoles', image_io.original_filename), 'wb') do |file|
      file.write(image_io.read)
    end
    params[:event][:img_url] = image_io.original_filename
    Console.create(params[:event])
    redirect_to admins_path
  end


  def media
  end

  def events_by_month
  end

  def all_events
  end
end

  def event_params
    params.require(:name,:about).permit(:image_url, :did,:event_id,:video)
  end


end