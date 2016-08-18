class Profile::PlacesController < ApplicationController

  before_action :set_place, only: [:show, :update, :edit, :destroy]

  def show
  end

  def new
    @place = Place.new
  end

  def create
    new_params = place_params
    new_params[:city] = new_params[:city].capitalize
    @place = Place.new(new_params)
    @place.user = current_user
    @place.save
    redirect_to profile_path
  end

  def edit
  end

  def update
    @place.update(place_params)
    redirect_to profile_place_path(@place)
  end

  def destroy
    @place.destroy
    redirect_to profile_path
  end

  private

  def place_params
    params.require(:place).permit(:name, :address, :city, :kind, :description, :photo, :photo_cache, :day_price, :night_price, :zip_code, :country)
  end

  def set_place
    @place = Place.find(params[:id])
  end
end








