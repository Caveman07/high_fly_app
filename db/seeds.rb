# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#JSON file with Airporsts for the future
# https://github.com/jbrooksuk/JSON-Airports/blob/master/airports.json

Airport.create!(
        code: "ATL"
)
Airport.create!(
        code: "ORD"
)
Airport.create!(
        code: "LAX"
)
Airport.create!(
        code: "DFW"
)
Airport.create!(
        code: "DEN"
)
Airport.create!(
        code: "JFK"
)
Airport.create!(
        code: "SFO"
)
Airport.create!(
        code: "CLT"
)
Airport.create!(
        code: "LAS"
)
Airport.create!(
        code: "PHX"
)

15.times do

  Flight.create!(start_airport_id: rand(20..29),
                finish_airport_id: rand(20..29),
                start_datetime: Time.now + rand(1..5).days,
                flight_duration: 2.hours )
end
