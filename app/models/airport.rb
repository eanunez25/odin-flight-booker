class Airport < ApplicationRecord
  has_many :departing_flights, class: "Flight", foreign_id: :to_airport_id
  has_many :arriving_flights, class: "Flight", foreign_id: :from_airport_id
end
