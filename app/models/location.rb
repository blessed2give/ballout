class Location < ActiveRecord::Base
  has_many :pick_ups
end
