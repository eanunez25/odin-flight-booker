class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport", foreign_key: :start_id
  belongs_to :to_airport, class_name: "Airport", foreign_key: :end_id

  def flight_date_formatted
    takeoff.strftime("%m/%d/%Y")
  end
end