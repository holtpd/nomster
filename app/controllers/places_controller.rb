class PlacesController < ApplicationController

  def index
    @pagy, @places = pagy(Place.all)
  end

  def new
    @place = Place.new
  end

end
