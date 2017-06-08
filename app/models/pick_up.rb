class PickUp < ActiveRecord::Base
  belongs_to :location
  has_many :pickup_users
  has_many :users, through: :pickup_users
end
