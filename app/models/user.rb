class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bets, foreign_key: :publisher_id

  has_many :bettings
  has_many :user_bets, through: :bettings, source: :bet

  has_one_attached :photo

  before_save :default_values

  def default_values
    self.wallet ||= 1000
  end


  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :username, presence: true



  # validates :phone_number, format: { with: /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/ }
end
