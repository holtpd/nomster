class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  geocoded_by :address
  after_validation :geocode
  validates :name, presence: true, length: { maximum: 100, minimum: 3 }
  validates :address, presence: true
  validates :description, presence: true
  has_many :photos
end
