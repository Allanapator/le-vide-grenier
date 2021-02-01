class CartsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart
  before_action :set_cart, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!


  def show
    @order = Order.new
    authorize @cart
  end

  def index
  end

  def new
    @cart = Cart.new(cart_params)
    authorize @cart
  end

  def create
    @cart = Cart.create(user_id: current_user.id)
    authorize @cart
  end

  def edit
    authorize @cart
  end

  def update
    authorize @cart
  end

  def destroy
    @cart.destroy #if @cart.id === session[:cart_id]
    #session[:cart_id] = nil
    redirect_to root_path
    authorize @cart
  end

  private

  def set_cart
    @cart = Cart.find(params[:id])
  end

  def cart_params
    params.require(:cart).permit(:product, :price, :products_counter, :user_id)
  end

  def invalid_cart
    logger.error "Attempt to access invalid cart #{params[:id]}"
    redirect_to root_path, notice: "That cart doesn't exist"
  end

end

