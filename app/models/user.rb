class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :pick_ups
  has_many :pickup_users
  has_many :user_pick_ups, through: :pickup_users, source: :pick_up
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
