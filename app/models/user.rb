class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bets, foreign_key: :publisher_id

  has_many :bettings
  has_many :user_bets, through: :bettings, source: :bet

  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true

  def total_points
    # won_bettings = Betting.where(user_id: self.id, won: true)
    # winnings_amount = won_bettings.sum { |betting| betting[:wager].to_f * betting.winning_odds.to_f }
    # winning_amount + self.wallet
  end

  # validates :phone_number, format: { with: /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/ }
end
