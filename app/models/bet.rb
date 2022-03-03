class Bet < ApplicationRecord
  CATEGORIES = ["Tout", "Culture", "Economie", "Politique", "Sport", "Planète", "Science", "Technologie", "Santé", "Divertissement"]

  has_one_attached :photo
  has_many :medias
  has_many :bettings
  belongs_to :publisher, class_name: "User"
  accepts_nested_attributes_for :medias

  validates :hashtag, presence: true, format: { with: /#[\S+]+/, message: "only allows hashtags" }, length: { maximum: 22 }
  validates :description, presence: true, length: { maximum: 2000, message: "2000 characters is the maximum allowed" }
  validates :question, presence: true, length: { maximum: 200, too_long: "%{count} characters is the maximum allowed" }
  validates :photo, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :expiring_at, presence: true
  # validate :expiration_date_cannot_be_in_the_past

  scope :filter_by_category, ->(category) { where category: category }

  def expiration_date_cannot_be_in_the_past
    if expiring_at.present? && expiring_at < Date.today
      errors.add(:expiring_at, "can't be in the past")
    end
  end

end
