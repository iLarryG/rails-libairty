class Place < ApplicationRecord
  after_validation :geocode, if: :address_changed?
  geocoded_by :address
  
  belongs_to :user
  has_many  :bookings
end
