class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :photo
  belongs_to :user, optional: true
  validates :name, presence: true, uniqueness: true
end
