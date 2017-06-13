class ServicesController < ApplicationController
  def index
    @services = Service.all.order('created_at DESC')
  end
   
  def new
    # @vehicle = Vehicle.find(params[:vehicle_id])
    @service = Service.new
  end 
   
  def create
    @service = @vehicle.services.build(service_params)
  end
   
   
   
  private
    def service_params
       params.require(:service).permit(:type, :odometer, :current_service, :price, :comments, :next_service)
    end
end
