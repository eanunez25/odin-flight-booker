# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

code_list = [
  "ORD", "LAX", "PHX", "SFO", "NYC", "ATL", "JFK", "SEA", "PHX", "LGA"
]

code_list.each do |code|
  Airport.create(code: code)
end

flight_list = [
  [1, 2],
  [1, 6],
  [2, 5], 
  [2, 10], 
  [3, 4], 
  [3, 8], 
  [4, 2], 
  [4, 6],
  [5, 8], 
  [5, 3],
  [6, 9],
  [6, 1], 
  [7, 4], 
  [7, 9], 
  [8, 5],
  [8, 10],
  [9, 2], 
  [9, 7],
  [10, 1], 
  [10, 4]
]

flight_list.each do |from, to|
  Flight.create(start_id: from, end_id: to)
end