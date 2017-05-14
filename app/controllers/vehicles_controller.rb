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
      redirect @vehicle
    else
      render 'new'
    end  
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  
  def vehicle_params
    params.require(:vehicle)
  end
  
  
end
