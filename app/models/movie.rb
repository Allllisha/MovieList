class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movie_genres
  has_many :lists, through: :bookmarks 
  has_many :genres, through: :movie_genres
  validates :overview, uniqueness: true, presence: true
  # searchkick
end
