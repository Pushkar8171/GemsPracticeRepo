class SampleGuestsCleanupJob < ApplicationJob
  queue_as :urgent

  def perform(*guest)
    WelcomeMailer.sample.deliver_later
  end
end
