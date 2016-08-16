class PlacesController < ApplicationController

  before_action :set_place, only: [:show, :update, :edit, :destroy]

  def index
    @places = Place.all
  end

  def show
  end

  def new
    @places = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.save
    #redirect_to
  end

  def edit
  end

  def update
    @place.update(place_params)
    #redirect_to
  end

  def destroy
    @place.destroy
    #redirect_to
  end

  private

  def place_params
    params.require(:place).permit(:name, :address, :city, :kind, :description, :day_price, :night_price)
  end

  def set_place
    @place = Place.find(params[:id])
  end
end








