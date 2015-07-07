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

  def destroy
    @prayer = Prayer.find(params[:id])
    @prayer.destroy
    redirect_to dashboard_prayers_path
  end

  private
    def prayer_params
      params.require(:prayer).permit(:full_name, :email, :phone, :prayer_request)
    end

end
