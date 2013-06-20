class EventController < ApplicationController
  def index
    if(params[:d_id])
      @designer = Design.find(params[:d_id])
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

  controlla se il parametro e_id è giusto

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
end