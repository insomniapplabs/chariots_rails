class EventsController < ApplicationController

  def create
  	@event = Event.create(event_params)
    if @event.save
      redirect_to dashboard_events_path
    else
      redirect_to dashboard_new_event_path
    end
  end

  def show
    @event = Event.friendly.find(params[:id])
  end

  def update
    @event = Event.friendly.find(params[:id])
    if @event.update(event_params)
      redirect_to dashboard_events_path
    end
  end

  def destroy
  	@event = Event.friendly.find(params[:id])
  	@event.destroy
  	redirect_to dashboard_events_path
  end


  private
    def event_params
      params.require(:event).permit(:title, :date, :description, :start_date, :end_date, :slug)
    end
end
