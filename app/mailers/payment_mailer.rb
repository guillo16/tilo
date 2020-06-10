class PaymentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.payment_mailer.new_payment.subject
  #
  def new_payment
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
