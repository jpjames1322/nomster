class PlacesController < ApplicationController
  def index
    @places = Place.all
  end
  def index
  @places = Place.order("name").paginate(page: params[:page])
  end
  def new
  end
end