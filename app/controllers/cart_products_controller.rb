class CartProductsController < ApplicationController
  include CurrentCart
  before_action :set_cart_product, only: [:show, :edit, :update, :destroy]
  before_action :set_cart, only: [:create]

  def show
  end
  
  def index
    @cart_products = CartProduct.all
  end

  def new
    @cart_product = CartProduct.new
  end

  def create
    product = Product.find(params[:product_id])
    @cart_product = @cart.add_product(product)
    if @cart_product.save
      redirect_to @cart_product.cart
      flash[:notice] = "Product added successfully"
    else
      render :new
      flash.now[:alert] = "Your product has not been added .." 
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @cart = Cart.find(session[:cart_id])
    @card_product.destroy
    redirect_to cart_path(@cart)
  end


  private

  def set_cart_product
    @cart_product = CartProduct.find(params[:id])
  end

  def cart_product_params
    params.require(:cart_product).permit(:product_id, :cart_id)
  end
  # def set_cart
  #   @cart = Cart.find(params[:id])
  # end


end
