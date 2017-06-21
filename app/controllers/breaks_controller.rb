class BreaksController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @breaks = Break.all
  end
  
  def new
    @service = Service.find(params[:id])
    @break = Break.new
  end
  
  def create
    @service = Service.find(params[:id])
    @break = Break.create(break_params)
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
  
  private
  
    def break_params
      params.require(:break).permit(:brand, :front, :rear)
    end
end
