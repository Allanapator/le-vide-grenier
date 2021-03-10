class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    arr = []
    Product.all.each do |product|
      unless arr.include?(product.category)
        arr << product.category
      end
    end

    @products = Product.all
    Product.reindex
    if params[:q].present?
      @products = Product.search(params[:q])
    end
  end
end
