class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  has_many :orders, dependent: :destroy
  has_many :products, dependent: :destroy
  has_one :cart
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :city, presence: true
  validates :sexe, presence: true
  validates :age, presence: true
  validates :name, presence: true
end
