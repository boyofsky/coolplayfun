class LocationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  
  def index
    @alllocations = Location.all
  end
  
  def new
    @newlocation = Location.new
  end
  
  def create
    #render location_params
    render text: params
    return 
    
    @newlocation = Location.new(location_params)
    @newlocation.save
  end
  
  def edit
  end
  
  def destroy
  end
  
  private
    def location_params
      params.require(:location).permit(:name,:gps)
    end
end
