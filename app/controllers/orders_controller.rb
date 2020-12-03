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
    @order = Order.new
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
