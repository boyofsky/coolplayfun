class LocationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  
  def index
    @alllocations = Location.all
    
    respond_to do |format|
      format.html
      format.xml {render :xml => @alllocations.to_xml}
      format.json {render :json => @alllocations.to_json}
    end
  end
  
  def new
    @location = Location.new
  end
  
  def create
    #render text: location_params
    #render text: params
    #return 
    
    @location = Location.new(location_params)
    respond_to do |format|
      if @location.save
        format.html { render :index}
        #format.json {}
      else
        format.html { render :new }
        #format.json { render json: @location.errors, status: :unprocessable_entity }
        #format.json { render json: @location.errors}
      end
    end
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
