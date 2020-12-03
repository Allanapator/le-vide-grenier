class Order < ApplicationRecord
  belongs_to :cart
  has_many :products, through: :order_product

  def add_item(product)
    current_product = order_products.find_by(product_id: product.id)
    unless current_product
      current_product = order_products.build(product_id: product.id)
    end
    current_product
  end
end
