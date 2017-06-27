class OilChangesController < ApplicationController

  def index
    @oil_changes = OilChange.all
  end
  
  def new
    @service = Service.find(params[:id])
    @oil_change = OilChange.new
  end
  
  def create
    @service = Service.find(params[:id])
    @oil_change = OilChange.create(oil_change_params)
      if @oil_change.save
        redirect_to @service
      else
        render 'new'
      end    
  end
  
  def edit
    
  end
  
  def show
    @oil_change = OilChange.find(params[:id])
  end
  
  private
  
    def oil_change_params
      params.require(:oil_changes).permit(:filter, :oil_brand)
    end
end


