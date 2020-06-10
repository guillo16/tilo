class PaymentMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.payment_mailer.new_payment.subject
  #
  def new_payment
    @order = params[:order]
    @user = params[:user]
    mail(to: @user.email, subject: "Tu compra a sido Exitosa")
  end
end
