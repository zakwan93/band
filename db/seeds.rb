# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Venue.create(name: "Time Square", city: "Manhattan", state: "NY", family_friendly: true)
Band.create(name: "Metalica", genre: "Heavy Metal", explicit_lyrics: true)
Event.create(band_id: 1, venue_id: 1, event_date: '2015-08-25', alcohol_served: true)