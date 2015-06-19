class PrayerMailer < ActionMailer::Base
  def prayer_request(prayer)
  	@prayer = prayer
  	mail(from: @prayer.email, to: 'aaronjohnsonis@gmail.com', subject: 'Prayer Request')
  end
end
