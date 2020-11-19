class CartProduct < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  def total_price
    product.price.to_i * product.quantity.to_i
  end
end
