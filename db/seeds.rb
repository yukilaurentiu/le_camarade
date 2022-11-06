User.create(nickname: "yuki", email: "yuki@lewagon.com", password: "123456")
User.create(nickname: "oliver", email: "oliver@lewagon.com", password: "123456")
User.create(nickname: "sydel", email: "sydel@lewagon.com", password: "123456")
User.create(nickname: "sara", email: "sara@lewagon.com", password: "123456")
User.create(nickname: "beyze", email: "beyza@lewagon.com", password: "123456")
User.create(nickname: "emma", email: "emma@lewagon.com", password: "123456")
# User.create(nickname: "sophia", email: "sophia@lewagon.com", password: "123456")
# User.create(nickname: "nora", email: "nora@lewagon.com", password: "123456")
# User.create(nickname: "james", email: "james@lewagon.com", password: "123456")
# User.create(nickname: "jack", email: "jack@lewagon.com", password: "123456")

puts "Users finished!"

puts "Creating events..."

Event.create(
  user_id: "1",
  event_name: "Paris Meetup",
  start_time: "2022-11-15",
  end_time: "2022-11-15",
  location: "18 Rue Beautreillis, 75004 Paris, France"
)

Event.create(
  user_id: "2",
  event_name: "LeWagon Bar Tour",
  start_time: "2022-11-20",
  end_time: "2022-11-21",
  location: "Van Arteveldestraat 1, 1000 Brussels, Belgium"
)

Event.create(
  user_id: "3",
  event_name: "Le Wagon Chill Lounge",
  start_time: "2022-11-23",
  end_time: "2022-11-25",
  location: "Balanstraße 73 Haus 21A, 4. Stock, 81541 München"
)

Event.create(
  user_id: "4",
  event_name: "Virtual Chat Ruby on Rails",
  start_time: "2022-12-01",
  end_time: "2022-12-01",
  location: "online"
)

Event.create(
  user_id: "5",
  event_name: "Virtual Holiday Games",
  start_time: "2022-12-25",
  end_time: "2022-12-25",
  location: "online"
)
puts "Events finished!"
# event = Event.create!(
#   event_name: "Paris Meetup",
#   location: "18 Rue Beautreillis, 75004 Paris, France",
#   user_id: user.id,
#   start_time: Faker::Date.between(from: '2022-11-15', to: '2022-11-16'),
#   end_time: Faker::Date.between(from: '2022-11-17', to: '2022-11-18')
# )
# event.save!
# event = Event.create!(
#   event_name: "Brussels LeWagon Bar Tour",
#   location: "Van Arteveldestraat 1, 1000 Brussels, Belgium",
#   user_id: user.id,
#   start_time: Faker::Date.between(from: '2022-11-20', to: '2022-11-21'),
#   end_time: Faker::Date.between(from: '2022-11-22', to: '2022-11-23')
# )
# event.save!
# event = Event.create!(
#   event_name: "Le Wagon Chill Lounge",
#   location: "Balanstraße 73 Haus 21A, 4. Stock, 81541 München",
#   user_id: user.id,
#   start_time: Faker::Date.between(from: '2022-11-23', to: '2022-11-24'),
#   end_time: Faker::Date.between(from: '2022-11-25', to: '2022-11-26')
# )
# event.save!
# # puts event ####
# # puts "#{event.event_name}" ####
# # puts "#{event.location}" ####
# # puts "#{event.user_id}" ####
# # puts "#{event.start_time}" ####
# # puts "#{event.end_time}" ####
# puts "Events finished!"
# # End of: event seeds

# # Start of: event_bookmark seeds
# puts "Create one Event Bookmark!"
# event_bookmark_1 = EventBookmark.create!(
#   event_id: event.id,
#   user_id: user.id,
#   comment: "This is a cool event. I like it."
# )
# puts "Event Bookmarks finished!"
# # End of: event_bookmark seeds
