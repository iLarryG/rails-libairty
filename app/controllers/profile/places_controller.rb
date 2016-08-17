class Profile::PlacesController < ApplicationController

  before_action :set_place, only: [:show, :update, :edit, :destroy]

  def show
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.user = current_user
    @place.save!
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
    params.require(:place).permit(:name, :address, :city, :kind, :description, :day_price, :night_price)
  end

  def set_place
    @place = Place.find(params[:id])
  end
end








