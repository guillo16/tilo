class OrdersController < ApplicationController
  def index
    if current_user.admin?
      @order = Order.where(state: 'Encargado').sum('amount_cents') * 0.01
      @orders = Order.where(state: 'Encargado').order(created_at: :desc).page params[:page]
    else
      redirect_to root_path
      flash[:notice] = "Accesso denegado!"
    end
  end

  def show
    @order = current_user.orders.where(state: 'Encargado').find(params[:id])
  end

  def create
    cart = Cart.find(params[:cart_id])
    order = Order.create!(amount: cart.total_price, state: 'Pendientes', user: current_user, cart: cart)
    order.cart.line_items.each do |item|
      line_quantity = item.quantity
      item.product.decrement!(:stock, line_quantity)
    end
    redirect_to new_order_payment_path(order)
  end
end
