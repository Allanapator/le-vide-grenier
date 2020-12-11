class CartProduct < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  def total_price
    product.price_cents * quantity.to_i
  end
end
