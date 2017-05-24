class VehiclesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :find_vehicle, only: [:show, :edit, :update, :destroy]
  
  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicle = current_user.vehicles.build
  end

  def create
    @vehicle = current_user.vehicles.build(vehicle_params)
    @vehicle.image = params[:file]

    if @vehicle.save
      redirect_to @vehicle
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @vehicle.update(vehicle_params)
      redirect_to @vehicle
    else
      render :edit
    end
  end

  def destroy
    if @vehicle.delete
      redirect_to root_path
    else
      render :show
    end
  end
  
  private
  
    def vehicle_params
      params.require(:vehicle).permit(:owner_name, :nick_name, :year, :make, :model, :original_odometer, :image)
    end
    
    def find_vehicle
      @vehicle = Vehicle.find(params[:id])
    end
  
  
end
