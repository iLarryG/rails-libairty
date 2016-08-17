class BookingsController < ApplicationController
  # skip_before_action :authenticate_user!
  before_action :set_place, only: [:new, :create]

  def new
    @booking = Booking.new
  end


  def create
    @booking = @place.bookings.build(booking_params)
    @booking.user = current_user
    @booking.save
    redirect_to profile_path
  end

  private

  def booking_params
    params.require(:booking).permit(:event_time, :status, :event_date)
    # t.references :place, foreign_key: true
    # t.references :user, foreign_key: true
  end

  def set_place
    @place = Place.find(params[:place_id])
  end

end








