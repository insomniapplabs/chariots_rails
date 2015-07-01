class EventsController < ApplicationController

  def create
  	@event = Event.create(event_params)
  end

  def destroy
  	@event = Event.find(params[:id])
  	@event.destroy
  	redirect_to dashboard_events_path
  end


  private
    def event_params
      params.require(:event).permit(:title, :date, :description)
    end
end
