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
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    if @vehicle.update(vehicle_params)
      redirect_to @vehicle
    else
      render :edit
    end
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    if @vehicle.delete
      redirect_to root_path
    else 
      render :show
    end
  end
  
  private
  
  def vehicle_params
    params.require(:vehicle).permit(:owner_name, :nick_name, :year, :make, :model, :original_odometer)
  end
  
  
end
