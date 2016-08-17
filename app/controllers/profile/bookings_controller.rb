class Profile::BookingsController < ApplicationController
  before_action :set_booking, only: [ :show, :create ]

  def index
    @booking = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

end








