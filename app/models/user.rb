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

    score = Betting.where(user_id: self.id, won: true)
    score.count
    score.sum { |betting| betting[:wager] * betting.winning_odds }
  end

  # validates :phone_number, format: { with: /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/ }
end
