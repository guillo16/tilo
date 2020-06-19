class PaymentsController < ApplicationController
  before_action :set_order
  def new
  end

  def create
    # DESTROY CART
    payment = params[:payment_method]
    @cart = Cart.find(session[:cart_id])
    session[:cart_id] = nil
    @order.update(state: 'Encargado', method: payment)
    OrderMailer.with(order: @order).new_order.deliver_later
    OrderMailer.with(order: @order).new_payment.deliver_later
    redirect_to order_path(@order)
  end

  private

  def set_order
    @order = current_user.orders.where(state: 'Pendientes').find(params[:order_id])
  end
end
