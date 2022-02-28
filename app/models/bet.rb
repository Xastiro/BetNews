class Bet < ApplicationRecord
  has_one_attached :photo
  has_many :medias
  has_many :bettings
  belongs_to :users

  validates :hashtag, presence: true
  validates :description, presence: true
  validates :question, presence: true
  validates :photo, presence: true
  validates :expiring_at, presence: true
  validates :category, presence: true, inclusion: { in: ["Culture", "Economie", "Politique", "Sport", "Planète", "Science", "Technologie", "Santé"]}
end
