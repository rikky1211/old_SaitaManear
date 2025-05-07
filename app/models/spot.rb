class Spot < ApplicationRecord
  validates :spot_image, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true

  belongs_to :user
  belongs_to :town
end
