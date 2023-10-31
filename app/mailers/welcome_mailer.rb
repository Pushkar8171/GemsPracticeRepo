class WelcomeMailer < ApplicationMailer
  
  def sample
    @foo = "my foo"
    mail(to: 'john@yopmail.com', subject: 'Welcome to My Awesome Site')
  end
end
