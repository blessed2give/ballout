class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new
    @location.name = params[:location][:name]
    @location.address = params[:location][:address]

    if @location.save
      flash[:notice] = "Location Added!"
      redirect_to @location
    else
      flash[:alert] = "There was an error. Please try again."
      render :new
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    @location.name = params[:location][:name]
    @location.address = params[:location][:address]

    if @location.save
      flash[:notice] = "Location Updated!"
      redirect_to @location
    else
      flash[:alert] = "There was an error. Please try again."
      render :edit
    end
  end

  def destroy
    @location = Location.find(params[:id])

    if @location.destroy
      flash[:notice] = "\"#{@location.name}\" Was Deleted!"
      redirect_to locations_path
    else
      flash[:notice] = "There was an error deleting the location."
      render :show
    end
  end

  private

  def location_params
    params.require(:location).permit(:name, :address)
  end
end
