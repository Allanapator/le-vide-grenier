class Cart < ApplicationRecord
  belongs_to :user, optional: true
  # has_many :cart_products, dependent: :nullify
  has_many :cart_products, dependent: :destroy

  def add_product(product)
    current_product = cart_products.find_by(product_id: product.id)
    if current_product
      current_product.increment(:quantity)
    else
      current_product = cart_products.build(product_id: product.id)
    end
    current_product
  end

  def total_price
    cart_products.to_a.sum { |item| item.total_price}
  end
end
