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