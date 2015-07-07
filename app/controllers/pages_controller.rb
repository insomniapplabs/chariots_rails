class PagesController < ApplicationController

  def home
    @upcoming_events = Event.all
    @posts = Post.all
  end

end
