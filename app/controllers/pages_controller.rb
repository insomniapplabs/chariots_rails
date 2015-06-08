class PagesController < ApplicationController

  def home
    @prayer = Prayer.new
  end
  
end
