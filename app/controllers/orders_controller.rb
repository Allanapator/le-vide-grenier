class OrdersController < ApplicationController
  def show
  end

  def index
    @orders = Order.all
    @order_products = OrderProduct.all
    raise
  end

  def new
  end

  def create
    user_cart = current_user.cart.id
    @order = Order.create(cart_id: user_cart, user_id: current_user.id)
    # @order_product = OrderProduct.create(product_id: product.id, order_id: @order.id)

    current_user.cart.cart_products.each do |cart_product|
      @order_product = OrderProduct.create(product_id: cart_product.product.id, order_id: @order.id)
    end
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
