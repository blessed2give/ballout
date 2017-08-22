class Location < ActiveRecord::Base
  has_many :pick_ups
  geocoded_by :address
  after_validation :geocode
end
