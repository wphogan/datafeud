class UserMailer < ActionMailer::Base

  def account_activation(user)
    @user = user
   mail to: user.email, from: "noreply@example.com", subject: "Account activation"
  end

  def password_reset(user)
    @user = user
    mail to: user.email,  from: "noreply@example.com", subject: "Password reset"
  end
end