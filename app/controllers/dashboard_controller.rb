class DashboardController < ApplicationController

	before_action :require_user

  def index
  	@recent_events = Event.all
  end

  def events
  	@events = Event.all
  end

  def posts
  	@posts = Post.all
  end

  def newEvent
    @event = Event.new
  end

  def editEvent
    @event = Event.find(params[:id])
		@upcoming_events = Event.all
  end

	def editPost
		@post = Post.find(params[:id])
	end

	def prayers
		@prayers = Prayer.order('created_at desc')
	end

	def viewPrayer
		@prayer = Prayer.find(params[:id])
	end


end
