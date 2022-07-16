class Movie < ApplicationRecord
  #belongs_to :list, optional: true
  has_many :bookmarks

  validates :title, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true
end
