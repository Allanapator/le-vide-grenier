class Order < ApplicationRecord
  belongs_to :cart
  belongs_to :user
  has_many :products, through: :order_product
  has_many :order_products, dependent: :destroy
  monetize :amount_cents
  def add_item(product)
    current_product = order_products.find_by(product_id: product.id)
    unless current_product
      current_product = order_products.build(product_id: product.id)
    end
    current_product
  end

  def stripe_amount
    sum = 0
    @order.order_products.each do |order_product|
      sum += order_product.product.price_cents
    end
    sum
  end
end
