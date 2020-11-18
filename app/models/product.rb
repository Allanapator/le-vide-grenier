class Product < ApplicationRecord
  has_many :tags
  belongs_to :user
  has_many :carts, through: :cart_product
  has_many :orders, through: :order_product
  validates :name, presence: true
  validates :category, presence: true
  validates :quantity, presence: true
  validates :price, presence: true
  
end
