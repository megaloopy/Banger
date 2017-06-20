class BreaksController < ApplicationController
  
  def new
    @service = Service.find(params[:id])
    @break = Break.new
  end
  
  def create
    @service = Service.find(params[:id])
    @break = Break.build(break_params)
      if @break.save
        redirect_to @service
      else
        render 'new'
      end    
  end
  
  def edit
    
  end
  
  def show
    @break = Break.find(params[:id])
  end
  
  def index
    @breaks = Break.all
  end
  
  private
  
  def break_params
    params.require(:brake).permit(:brand, :front, :rear)
  end
end
