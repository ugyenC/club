class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  
  def password_changed(id)
    @user= User.find(id)
    mail to: @user.email, subject: "Your password has changed"
  end

  layout 'mailer'
end
