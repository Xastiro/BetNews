class Bet < ApplicationRecord
  has_one_attached :photo
  has_many :medias
  has_many :bettings
  belongs_to :user

  validates :hashtag, presence: true, format: { with: /#[\S+]+/, message: "only allows hashtags" }
  validates :description, presence: true, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }
  validates :question, presence: true, length: { maximum: 200, too_long: "%{count} characters is the maximum allowed" }
  # validates :photo, presence: true
  validates :category, presence: true, inclusion: { in: ["Culture", "Economie", "Politique", "Sport", "Planète", "Science", "Technologie", "Santé", "Divertissement"]}
  validates :expiring_at, presence: true
  validate :expiration_date_cannot_be_in_the_past

  def expiration_date_cannot_be_in_the_past
    if expiring_at.present? && expiring_at < Date.today
      errors.add(:expiring_at, "can't be in the past")
    end
  end

end
