# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Flat.destroy_all

prices = (45...75).to_a
guests = (2...6).to_a
4.times do
  Flat.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    description: Faker::Restaurant.description,
    price_per_night: prices.sample,
    number_of_guests: guests.sample
  )
end
