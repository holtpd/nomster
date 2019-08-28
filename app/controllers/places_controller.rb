class PlacesController < ApplicationController

  def index
    @pagy, @places = pagy(Place.all)
  end

  def new
    @place = Place.new
  end

  def create
    PLace.create(place_parmas)
    redirect_to root_path
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end 

end
