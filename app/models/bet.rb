class Bet < ApplicationRecord
  attr_writer :current_step

  CATEGORIES = ["Tout", "Culture", "Economie", "Politique", "Sport", "Planète", "Science", "Technologie", "Santé", "Divertissement"]

  has_one_attached :photo
  has_many :medias
  has_many :bettings
  belongs_to :publisher, class_name: "User"
  accepts_nested_attributes_for :medias

  validates :hashtag, presence: true, format: { with: /#[\S+]+/, message: "only allows hashtags" }, length: { maximum: 22 }, :if => lambda { |o| o.current_step == "question" }
  validates :description, presence: true, length: { maximum: 2000, message: "2000 characters is the maximum allowed" }, :if => lambda { |o| o.current_step == "information" }
  validates :question, presence: true, length: { maximum: 200, too_long: "%{count} characters is the maximum allowed" }, :if => lambda { |o| o.current_step == "question" }
  validates :photo, presence: true, :if => lambda { |o| o.current_step == "question" }
  validates :category, presence: true, inclusion: { in: CATEGORIES }, :if => lambda { |o| o.current_step == "category" }
  validates :expiring_at, presence: true, :if => lambda { |o| o.current_step == "question" }
  # validate :expiration_date_cannot_be_in_the_past

  scope :filter_by_category, ->(category) { where category: category }

  def expiration_date_cannot_be_in_the_past
    if expiring_at.present? && expiring_at < Date.today
      errors.add(:expiring_at, "can't be in the past")
    end
  end

  def current_step
    @current_step || steps.first
  end

  def steps
    %w[category information question]
  end

  def next_step
    self.current_step = steps[steps.index(current_step) + 1]
  end

  def previous_step
    self.current_step = steps[steps.index(current_step)-1]
  end

  def first_step?
    current_step == steps.first
  end

  def last_step?
    current_step == steps.last
  end

  def all_valid?
    steps.all? do |step|
      self.current_step = step
      valid?
    end
  end







end
