nicknames = ["yuki", "oliver", "sydel", "sara", "beyza", "yukiko", "sarah", "emma", "nora", "james"]

i = 0
loop do
  temp = User.create(nickname: nicknames[i], email: "#{nicknames[i]}@lewagon.com", password: "123456")
  temp.avatar.attach(
    io: File.open("#{Dir.pwd}/app/assets/images/avatar/pic#{i}.png"),
    filename: "pic#{i}.png"
  )

  # sleep(3)
  i += 1

  if i == 10
    break   # this will cause execution to exit the loop
  end
end


# User.create(nickname: "sophia", email: "sophia@lewagon.com", password: "123456")
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
  user_id: "4",
  event_name: "LeWagon Bar Tour",
  start_time: "2022-11-20",
  end_time: "2022-11-21",
  location: "Van Arteveldestraat 1, 1000 Brussels, Belgium"
)

Event.create(
  user_id: "6",
  event_name: "Le Wagon Chill Lounge",
  start_time: "2022-11-23",
  end_time: "2022-11-25",
  location: "Balanstraße 73 Haus 21A, 4. Stock, 81541 München"
)

Event.create(
  user_id: "7",
  event_name: "Virtual Chat 'Ruby'",
  start_time: "2022-12-01",
  end_time: "2022-12-01",
  location: "online"
)

Event.create(
  user_id: "3",
  event_name: "Zurich Meetup",
  start_time: "2022-12-15",
  end_time: "2022-12-16",
  location: "Bahnhofpl., 8001 Zürich, Switzerland"
)

Event.create(
  user_id: "5",
  event_name: "Virtual Holiday Games",
  start_time: "2022-12-25",
  end_time: "2022-12-25",
  location: "online"
)

Event.create(
  user_id: "1",
  event_name: "Christmas Market Tour",
  start_time: "2022-12-17",
  end_time: "2022-12-18",
  location: "Rathauspark W, 1010 Wien, Austria"
)

Event.create(
  user_id: "2",
  event_name: "BBQ at Rhine river",
  start_time: "2023-05-23",
  end_time: "2023-05-23",
  location: "Cologne, Germany"
)

puts "Events finished!"


# require "faker"

# puts "Create one example user!"
# user = User.create!(
#   # name: "Oliver Stoislow",   #Faker::Name.name
#   email: Faker::Internet.email, # "Sydel@email.com"
#   password: "123456",
#   encrypted_password: "123456"
# )
# user.save!
# puts "User finished!"
# puts "Destroying events..."
# Event.destroy_all
# puts "Creating events..."
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
