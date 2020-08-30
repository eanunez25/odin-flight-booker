class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = @flight.bookings.build

    @num_tickets = params[:num_tickets].to_i
    @num_tickets.times { @booking.passengers.build }
  end

  private

  def booking_params
    params.require(:bookgin).permit(:flight_id)
  end
end
