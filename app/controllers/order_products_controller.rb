class OrderProductsController < ApplicationController
  def show
  end

  def index
    @order_products = OrderProduct.all
  end

  def new
  end

  def create
    # array_id = []
    # product = Product.find(params[:product_id])
    # @cart = Cart.find(params[:id])
    # @cart.cart_products.each{ |x| array_id << x.product_id }
    # @order_product.product_id = @cart.cart_products.first.product_id
    # @order_product = @order.add_item(product)
    order_test = OrderProduct.create(product_id: 11, order_id: Order.first.id)
    if order_test.save
      redirect_to orders_path
      flash[:notice] = "Payment accepted"
    else 
      flash[:alert] = "!!!!"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def order_product_params
      params.require(:order_product).permit(:product_id, :order_id)
    end

  # def set_order_product
  #   @order_product = OrderProduct.find(params[:id])
  # end
end
