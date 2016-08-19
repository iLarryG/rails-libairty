class Availibility < ApplicationRecord
  belongs_to :place, optional: :true
end
