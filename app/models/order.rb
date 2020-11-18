class Order < ApplicationRecord
  belongs_to :cart
  has_many :products, through: :order_product
end
