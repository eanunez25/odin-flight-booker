class FlightsController < ApplicationController
  def index
    @flights = Flight.where(start_id: params[:from_airport], end_id: params[:to_airport], takeoff: params[:takeoff])
  end
end
