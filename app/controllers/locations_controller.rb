class LocationsController < ApplicationController

  before_action :set_location, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: "pat", password: "1234", :except => :show

  def show
  end

  def home
     @location = Location.all.sample
  end

  def index
    @location = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      redirect_to location_path(@location), notice: "Location was created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @location.update(location_params)
      redirect_to location_path(@location), notice: "Location was updated"
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location is deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:title, :subtitle, :description, :header_image)
  end
end
