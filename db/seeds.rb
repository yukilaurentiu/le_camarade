require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Start of: event seeds
puts "Create one example user!"
user = User.create!(
  # name: "Oliver Stoislow",   #Faker::Name.name
  email: Faker::Internet.email, # "Sydel@email.com"
  password: "123456",
  encrypted_password: "123456"
)
user.save!
puts "User finished!"
puts "Destroying events..."
Event.destroy_all
puts "Creating events..."
event = Event.create!(
  event_name: "Paris Meetup",
  location: "18 Rue Beautreillis, 75004 Paris, France",
  user_id: user.id,
  start_time: Faker::Date.between(from: '2022-11-15', to: '2022-11-16'),
  end_time: Faker::Date.between(from: '2022-11-17', to: '2022-11-18')
)
event.save!
event = Event.create!(
  event_name: "Brussels LeWagon Bar Tour",
  location: "Van Arteveldestraat 1, 1000 Brussels, Belgium",
  user_id: user.id,
  start_time: Faker::Date.between(from: '2022-11-20', to: '2022-11-21'),
  end_time: Faker::Date.between(from: '2022-11-22', to: '2022-11-23')
)
event.save!
# puts event ####
# puts "#{event.event_name}" ####
# puts "#{event.location}" ####
# puts "#{event.user_id}" ####
# puts "#{event.start_time}" ####
# puts "#{event.end_time}" ####
puts "Events finished!"
# End of: event seeds
