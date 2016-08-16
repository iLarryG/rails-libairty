class PlacesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_place, only: [:show]

  def index
    @places = Place.all
  end

  def show
  end

private

  def set_place
    @place = Place.find(params[:id])
  end
end








