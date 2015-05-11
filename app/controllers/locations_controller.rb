class LocationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  
  def index
    @alllocations = Location.all
  end
  
  def new
    @location = Location.new
  end
  
  def create
    #render text: location_params
    #render text: params
    #return 
    
    @newlocation = Location.new(location_params)
    @newlocation.save
    redirect_to action: "index"
  end
  
  def edit
    @location = Location.find(params[:id])
  end
  
  def update
    @updatelocation = Location.find(params[:id])
    @updatelocation.update(location_params)
    redirect_to action: "show"
  end
  
  def show
    #render text: params
    #return 
    @location = Location.find(params[:id])
  end
    
  def destroy
    #render text: params[:id]
    #return 
    @deletelocation = Location.find(params[:id])
    @deletelocation.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    def location_params
      params.require(:location).permit(:name,:gps,:address,:official_web)
    end
end
