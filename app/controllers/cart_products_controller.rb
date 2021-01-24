class CartProductsController < ApplicationController
  include CurrentCart
  before_action :set_cart_product, only: [:show, :edit, :update, :destroy]
  before_action :set_cart, only: [:create]
  skip_before_action :authenticate_user!

  def show
  end
  
  def index
    @cart_products = CartProduct.all
  end

  def new
    @cart_product = CartProduct.new
  end

  def create
    array_id = []
    product = Product.find(params[:product_id])
    # Order.create(product_id: product.id)
    # @cart = Cart.create(user_id: current_user.id) if @cart.user_id.nil?
    @cart.cart_products.each{ |x| array_id << x.product_id }
    @cart_product = @cart.add_product(product)
    
    if array_id.include?(product.id)
      redirect_to root_path
      flash[:alert] = "Ce produit est déjà dans votre panier"
    elsif @cart_product.save
      redirect_to @cart_product.cart
      flash[:notice] = "Le produit a bien été ajouté au panier"
    else
      render :new
      flash.now[:alert] = "Votre produit n'a pas été ajouté" 
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @cart = Cart.find(session[:cart_id])
    @cart_product.destroy
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
