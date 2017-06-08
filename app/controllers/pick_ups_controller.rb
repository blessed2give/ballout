class PickUpsController < ApplicationController
  def show
    @pick_up = PickUp.find(params[:id])
    @location = @pick_up.location
  end

  def new
    @pick_up = PickUp.new
    @location = Location.find(params[:location_id])
  end

  def create
    @pick_up = PickUp.new(pickup_params)
    @location = Location.find(params[:location_id])

    @pick_up.location = @location

    if @pick_up.save
      flash[:notice] = "Pick up added"
      redirect_to [@location, @pick_up]
    else
      flash[:error] = "There was an error"
      render :new
    end
  end

  def edit
  end

  private

  def pickup_params
    params.require(:pick_up).permit(:time)
  end
end
