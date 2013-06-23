
class EventController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def show

  end

  def create
  end

  def media
  end

  def events_by_month
    @month = params[:month]
    @all_events = Event.all
    @all_events.each do |event|
    @events_by_month_list = event.where('month = ? ',@month).order('title ASC')
    end
  end


  def all_events
    @all_events = Event.all
    @dates = []
    @all_events.each do |event|
      @dates << event.date
    end
    @all_events.sort_by! {|date| date}
  end

  def event_params
  end

end