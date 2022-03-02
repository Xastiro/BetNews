class Media < ApplicationRecord
  belongs_to :bet
  validates :url, presence: true
end
