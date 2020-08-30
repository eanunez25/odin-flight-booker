class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport", foreign_key: :start_id
  belongs_to :to_airport, class_name: "Airport", foreign_key: :end_id

  has_many :bookings
  has_many :passengers, through: :bookings

  def flight_date_formatted
    takeoff.strftime("%m/%d/%Y")
  end

  def flight_time_formatted
    takeoff.strftime("%I:%M %p")
  end

  def self.get_dates
    dates = []
    Flight.all.each do |f|
      dates << f.takeoff.to_date
    end
    dates.uniq
  end 
end