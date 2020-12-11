class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def index
    @orders = Order.all
    @order_products = OrderProduct.all
    
  end

  def new
  end

  def create
    if @cart.user_id.nil?
      @cart.user_id = current_user.id
      current_user.cart = @cart
    end

    user_cart = current_user.cart.id

    if @cart.cart_products.count > 0
      @order = Order.create(cart_id: user_cart, user_id: current_user.id)
    end
    
    current_user.cart.cart_products.each do |cart_product|
      @order_product = OrderProduct.create(product_id: cart_product.product_id, order_id: @order.id)
    end

    redirect_to orders_path
    current_user.cart.destroy
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
