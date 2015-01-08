class CardSet < ActiveRecord::Base
  validates :category, presence: true
  has_many :cards
end
