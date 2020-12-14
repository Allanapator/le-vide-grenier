class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!

  def index
    @products = current_user.products
  end

  def search
    @products = Product.where("lower(name) LIKE ?", "%" + "#{params[:q].downcase}" + "%")
  end

  def show
  end
  
  def new
    @product = Product.new
  end
  
  def create
    unless current_user
      flash[:alert] = "You must log in or sign in before creating product"
      redirect_to new_user_session_path
    else
      @product = Product.new(product_params)
      @product.user = current_user
      if @product.valid?
        @product.save!
        redirect_to product_path(@product)
      else
        render :new
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
    unless product.user == current_user
      flash[:alert] = "You can't destroy this product"
      redirect_to products_path
    else
      @product.user = current_user
      @product.destroy
      flash[:notice] = "This product has been deleted"
      redirect_to products_path
    end
  end

  private
  
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :category, :price_cents, :quantity, :tag)
  end

end
