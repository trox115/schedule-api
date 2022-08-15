class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.payment_submited.subject
  #
  def payment_submited
    @user = params[:user]
    @greeting = "Olá"
    @date = @user.date.strftime("%d/%m")
    @time =Time.parse(@user.start).strftime("%H:%M")

    mail(to: @user.email, subject: "Marcação dia: #{ @date } ás #{ @time }")
  end
end
