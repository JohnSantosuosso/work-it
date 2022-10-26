class GifSenderJob < ActiveJob::Base
  def perform(email, thought)
    UserNotifierMailer.send_randomness_email(email, thought).deliver_now
  end
end