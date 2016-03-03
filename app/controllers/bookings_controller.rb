class BookingsController < ApplicationController

  def create
    booking = Booking.new(booking_params)
    if booking.save
      redirect_to '/users'
    else
      redirect_to :back
    end
  end

  def destroy
  end

  private

  def booking_params
    params.permit(:tutor_detail_id, :ward_id, :subject_id, :booking_start, :booking_end)
  end

end
