class ServicesController < ApplicationController
  def index
    @services = Service.all.order('created_at DESC')
  end
   
  def new
    # @vehicle = Vehicle.find(params[:vehicle_id])
    @service = Service.new
  end 
   
  def create
    @vehicle = Vehicle.find(params[:id])
    @service = @vehicle.services.build(service_params)
    if @service.save
      redirect_to @vehicle
    else
      render :new
    end
  end
   
   
   
  private
    def service_params
       params.require(:service).permit(:service_option, :odometer, :current_service, :price, :comments, :next_service)
    end
end
