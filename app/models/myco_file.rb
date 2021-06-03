class MycoFile < ApplicationRecord
  has_many :photos, as: :imageable

  validates :name, presence: true
  validates :shape, presence: true
  validates :color, presence: true
  validates :edibility, presence: true
  validates :season, presence: true
  validates :location, presence: true
end
