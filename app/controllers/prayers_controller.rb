class PrayersController < ApplicationController

  def create
    @prayer = Prayer.create(prayer_params)
    if @prayer.save
      PrayerMailer.prayer_request(@prayer).deliver
      redirect_to root_path
    end
  end

  private
    def prayer_params
      params.require(:prayer).permit(:full_name, :email, :phone, :prayer_request)
    end

end
