class Card < ApplicationRecord
  belongs_to :deck
  has_many :slides
end
