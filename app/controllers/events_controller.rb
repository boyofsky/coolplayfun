class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  
  def new
    @event = Event.new
  end
  
  def create
    #render text: event_params
    #return 
    @event = Event.new(event_params)
    
    respond_to do |format|
      if @event.save
        #format.html {render :index}
        redirect_to 'index'
      else
        format.html {render :new}
      end
    end
  end
  
  private
  def event_params
    params.require(:event).permit(:title, :location_id, :event_date)
  end
end
