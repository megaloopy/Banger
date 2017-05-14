class VehiclesController < ApplicationController
  
  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      redirect_to @vehicle
    else
      render 'new'
    end  
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  
  def vehicle_params
    params.require(:vehicle).permit(:owner_name, :nick_name, :year, :make, :model, :original_odometer)
  end
  
  
end
