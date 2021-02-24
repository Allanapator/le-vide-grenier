class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authorize, only:[:search]
  skip_before_action :authenticate_user!

  def index
    @products = policy_scope(current_user.products)
  end

  def search
    @products = policy_scope(Product.where("lower(name) LIKE ?", "%" + "#{params[:q].downcase}" + "%"))
  end

  def show
    authorize @product
  end
  
  def new
    @product = Product.new
    authorize @product
  end
  
  def create
    unless current_user
      flash[:alert] = "You must log in or sign in before creating product"
      redirect_to new_user_session_path
    else
      @product = Product.new(product_params)
      @product.user = current_user
      if @product.valid?
        @product.price = @product.price * 100
        @product.save!
        redirect_to product_path(@product)
      else
        render :new
      end
    end
    authorize @product
  end
  
  def edit
    authorize @product
  end
  
  def update
    authorize @product
  end

  def destroy
    unless @product.user.id == current_user.id
      flash[:alert] = "You can't destroy this product"
      redirect_to products_path
    else
      @product.user = current_user
      @product.destroy
      flash[:notice] = "This product has been deleted"
      redirect_to products_path
    end
    authorize @product
  end
  
  private
  
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :category, :price_cents, :quantity, :tag, :photo, :description)
  end

end
