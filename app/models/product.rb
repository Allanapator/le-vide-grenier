class Product < ApplicationRecord
  searchkick

  has_many :tags
  has_one_attached :photo
  belongs_to :user
  monetize :price_cents
  # has_many :cart_products, dependent: :nullify
  # has_many :order_products, dependent: :nullify
  has_many :cart_products
  has_many :order_products, dependent: :destroy
  has_many :orders, through: :order_product
  validates :name, presence: true
  validates :category, presence: true
  validates :price_cents, presence: true

  # def self.search(search)
  #   where("category ILIKE ?", "%#{search}%")
  # end
end
