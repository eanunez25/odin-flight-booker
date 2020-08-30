class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @num_passengers = params[:num_tickets].to_i
    @booking = Booking.new
    @num_passengers.times do 
      @booking.passengers.build
    end

  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flight_id = booking_params[:flight_id]
    if @booking.save
      redirect_to root_url
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id,
                                    passengers_attributes: [:name])
  end
end
