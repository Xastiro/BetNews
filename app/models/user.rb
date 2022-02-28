class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bettings
  has_many :users
  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :encrypted_password, presence: true
  validates :email, presence: true

  validates :email, uniqueness: true
end
