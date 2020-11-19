class Product < ApplicationRecord
  has_many :tags
  belongs_to :user
  # has_many :cart_products, dependent: :nullify
  # has_many :order_products, dependent: :nullify
  has_many :cart_products
  has_many :orders, through: :order_product
  validates :name, presence: true
  validates :category, presence: true
  validates :quantity, presence: true
  validates :price, presence: true
  
end
