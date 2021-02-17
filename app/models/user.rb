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
  # enum sexe: { homme: 0, femme: 1}
  validates :name, presence: true
  validates :email, presence: true
  validates :address, presence: true
  validates :postal, presence: true
  validates :birthday, presence: true

  
end
