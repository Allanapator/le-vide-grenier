class OrdersController < ApplicationController
  def show
  end

  def index
    @orders = Order.all
    @order_products = OrderProduct.all
  end

  def new
  end

  def create
    user = current_user.cart.id
    @order = Order.create(cart_id: user)
    order = Order.find(params[:id])
    @order_product = OrderProduct.create(product_id: 11, order_id: order.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  # def order_params
  #   params.require(:order).permit(:order_product_id)
  # end
end
