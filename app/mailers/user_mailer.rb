class UserMailer < ApplicationMailer
  def account_activation user
    @user = user
    mail to: user.email
  end
end
