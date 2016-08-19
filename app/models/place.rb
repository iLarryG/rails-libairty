class Place < ApplicationRecord
  after_validation :geocode, if: :address_changed?
  geocoded_by :address

  belongs_to :user

   mount_uploader :photo, PhotoUploader

  has_many  :bookings, dependent: :destroy

  has_many  :availibilities, dependent: :destroy
  accepts_nested_attributes_for :availibilities, reject_if: :all_blank, allow_destroy: true

end
