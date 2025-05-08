class Spot < ApplicationRecord
  validates :spot_image, presence: true
  validates :latitude, presence: true, uniqueness: true
  validates :longitude, presence: true, uniqueness: true

  belongs_to :user
  belongs_to :town
end
