class EventController < ApplicationController

  def index
        if(params[:d_id])
          @designer = Design.find(params[:d_id])
          @events = @designer.events.order('title ASC')
        else
          @events = Event.order('title ASC')

        end
  end


   controlla se il parametro e_id è giusto

  def show
      @event = Event.find(params[:e_id])
  end




end

