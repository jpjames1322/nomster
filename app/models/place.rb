class Place < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :comments
  geocoded_by :address
  after_validation :geocode
  validates :address, :description, presence: true
  validates :name, presence: true, length: { maximum: 140, minimum: 3 }
end