class Place < ApplicationRecord
  belongs_to :user
  validates :address, :discription, presence: true
  validates :name, length: { minimum: 3 }
end