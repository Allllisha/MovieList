class Movie < ApplicationRecord
  has_many :bookmarks
  validates :overview, uniqueness: true, presence: true
end
