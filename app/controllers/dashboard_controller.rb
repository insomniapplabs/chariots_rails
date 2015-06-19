class DashboardController < ApplicationController

	before_action :require_user

  def index
  	@recent_events = Event.all
  end

  def events
  	@events = Event.all
  end


end
