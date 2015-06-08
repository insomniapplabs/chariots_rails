class EventsController < ApplicationController

  def create
      @event = Event.create(event_params)
  end


  private
    def event_params
      params.require(:event).permit(:title, :date, :description)
    end
end
