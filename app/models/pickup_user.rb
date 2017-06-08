class PickupUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :pick_up
end
