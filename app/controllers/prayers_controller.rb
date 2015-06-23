class PrayersController < ApplicationController

  def create
    @prayer = Prayer.new(prayer_params)
    if @prayer.save
      PrayerMailer.prayer_request(@prayer).deliver
      PrayerMailer.prayer_request_received(@prayer).deliver
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
    def prayer_params
      params.require(:prayer).permit(:full_name, :email, :phone, :prayer_request)
    end

end
