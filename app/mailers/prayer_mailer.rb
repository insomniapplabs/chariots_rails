class PrayerMailer < ActionMailer::Base
  def prayer_request(prayer)
  	@prayer = prayer
  	mail(from: @prayer.email, to: 'aaronjohnsonis@gmail.com', subject: 'Prayer Request')
  end

  def prayer_request_received(prayer)
  	@prayer = prayer
  	mail(from: 'aaronjohnsonis@gmail.com', to: @prayer.email, subject: 'Prayer Request Received')
  end
end
