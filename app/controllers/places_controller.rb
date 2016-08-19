class PlacesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_place, only: [:show]

  def index
    if params[:city].present?
      @places = Place.where("city ILIKE ?", "%#{params[:city].capitalize}%")
    else
      @places = Place.where.not(latitude: nil, longitude: nil)
    end

    if params[:event_date].present?
      @places = @places.joins(:availibilities).where(availibilities: { date: params[:event_date] })
    end

    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      # marker.infowindow render_to_string(partial: "/places/map_box", locals: { flat: flat })
    end
  end

  def show
    @alert_message = "You are viewing #{@place.name}"
    @place_coordinates = { lat: @place.latitude, lng: @place.longitude }
    @hash = Gmaps4rails.build_markers(@place) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
    end
  end

private

  def set_place
    @place = Place.find(params[:id])
  end
end