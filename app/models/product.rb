class Product < ApplicationRecord
  has_many :tags
  belongs_to :user
  validates :name, presence: true
  validates :category, presence: true
  validates :quantity, presence: true
  validates :price, presence: true
  
end
