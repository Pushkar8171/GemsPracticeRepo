class HardJob
  include Sidekiq::Job

  def perform(*args)
   WelcomeMailer.sample.deliver_later
  end
end
