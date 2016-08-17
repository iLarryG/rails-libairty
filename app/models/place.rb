class Place < ApplicationRecord
  after_validation :geocode, if: :address_changed?
  geocoded_by :address

  belongs_to :user

   mount_uploader :photo, PhotoUploader

  has_many  :bookings

end
