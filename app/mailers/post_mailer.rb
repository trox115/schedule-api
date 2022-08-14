class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.payment_submited.subject
  #
  def payment_submited
    @user = params[:user]
    pp @user
    @greeting = "Olá"

    mail(to: @user.email, subject: 'Nova Marcação')
  end
end
