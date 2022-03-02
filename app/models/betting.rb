class Betting < ApplicationRecord
  belongs_to :user
  belongs_to :bet

  validates :answer, presence: true
end
