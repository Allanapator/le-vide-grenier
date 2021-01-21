class OrdersController < ApplicationController
  require 'stripe'
  
  def show
    @order = current_user.orders.find(params[:id])
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
      @order = Order.create(cart_id: user_cart, user_id: current_user.id, state: "En attente")
    end
    
    current_user.cart.cart_products.each do |cart_product|
      @order_product = OrderProduct.create(product_id: cart_product.product_id, order_id: @order.id)
    end

    @order.amount = @order.stripe_amount(@order)
    @order.save
    array_name_product = []
    @order.order_products.each do |order_product|
      array_name_product << order_product.product.name 
    end
    
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: 'Total',
        amount: @order.amount_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(@order),
      cancel_url: cart_url(@cart)
    )

    @order.update(checkout_session_id: session.id)

    redirect_to new_order_payment_path(@order)
    # current_user.cart.destroy
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
