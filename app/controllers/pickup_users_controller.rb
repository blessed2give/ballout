class PickupUsersController < ApplicationController
  def create
    @pick_up = PickUp.find(params[:pick_up_id])
    user = User.find(current_user.id)
    #binding.pry
    #if PickupUser.create(user: user, pick_up: @pick_up)
    if user.pickup_users.create(pick_up_id: @pick_up.id)
      redirect_to @pick_up, notice: 'User Added!'
    end
  end

  def destroy
  end
end
