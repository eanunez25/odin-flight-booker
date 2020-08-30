class FlightsController < ApplicationController
  def index
    @dates = Flight.get_dates
    @flights = []
    if params[:date]
      date = Date.parse(params[:date])
      begin_day = date.beginning_of_day
      end_day = date.end_of_day
      @flights = Flight.where("start_id = ? AND end_id = ? AND takeoff >= ? AND takeoff <= ?", params[:from_airport], params[:to_airport], begin_day, end_day)
    end
    
  end

  private

    def flight_params
      params.require(:flight).permit(:from_airport, :to_airport, :date, :duration, :num_tickets)
    end

end