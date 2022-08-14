class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.payment_submited.subject
  #
  def payment_submited
    @user = params[:user]
    @greeting = "Olá"
    @date = DateTime.parse(@user.date.strftime("%d/%m")
    @time =Date.strptime(@user.start,"%Y-%m-%d %H:%M:%S %Z").strftime("%H:%M")

    mail(to: @user.email, subject: "Marcação dia: #{ date }")
  end
end
