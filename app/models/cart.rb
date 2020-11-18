class Cart < ApplicationRecord
  belongs_to :user, optional: true
  # has_many :cart_products, dependent: :nullify
  has_many :products, through: :card_product
end
