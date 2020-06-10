class UserMailer < ApplicationMailer
  def welcome
    @user = params[:user] # Instance variable => available in view
    mail(to: @user.email, subject: 'Bienvenido a Tilo Tienda Natural')
  end
end
