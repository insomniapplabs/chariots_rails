class DashboardController < ApplicationController

  def index
  	@recent_events = Event.all
  end

  def events
  	@events = Event.all
  end


end
