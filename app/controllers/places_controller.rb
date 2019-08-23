class PlacesController < ApplicationController
  def index
    @places = Place.all
  end
  def index
  @places = Place.order("name").paginate(page: params[:page]).per_page(5)
  end
  def new
    @place = Place.new
  end
  def create
    Place.create(place_params)
  end
  private
  def place_params
    params.require(:place).permit(:name, :description, :address)
  end
end