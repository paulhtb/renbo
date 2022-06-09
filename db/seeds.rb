# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning up database..."
User.destroy_all
Event.destroy_all
puts "Database cleaned"


user1 = User.create!(
  first_name: "Rick",
  last_name: "Sanchez",
  email: "rick@gmail.com",
  password: "123456",

)

event1 = Event.create!(
  name: "Burning Man 2022",
  category: "Festival",
  music_genre: "Electronic",
  country: "USA",
  city: "Black Rock City",
  address: "Black Rock City, Nevada, USA",
  start_time: DateTime.new(2022, 8, 28, 13, 0, 0),
  end_time: DateTime.new(2022, 9, 5, 13, 0, 0),
  description: "Burning Man is an event focused on community, art, self-expression, and self-reliance held annually in the western United States",
  event_url: "https://burningman.org/",
  image_url: "https://www.wallpaperflare.com/static/66/576/958/burning-man-love-desert-gay-wallpaper-preview.jpg"
)

event2 = Event.create!(
  name: "Elton John Farewell Tour",
  category: "Performance",
  music_genre: "Rock",
  country: "United Kingdom",
  city: "London",
  address: "The O2, Peninsula Square, London, United Kingdom",
  start_time: DateTime.new(2022, 4, 2, 19, 0, 0),
  end_time: DateTime.new(2022, 4, 2, 21, 0, 0),
  description: "Farewell Yellow Brick Road is an ongoing tour by English musician Elton John that began in Allentown, Pennsylvania on 8 September 2018. It is intended to be John's final tour and will consist of more than 300 concerts worldwide",
  event_url: "https://www.eltonjohn.com/",
  image_url: "https://townsquare.media/site/838/files/2021/06/attachment-eltonjohn-finaltour.jpg?w=1080&h=1080&q=75"
)

event3 = Event.create!(
  name: "Montreux Jazz Festival",
  category: "Festival",
  music_genre: "Jazz",
  country: "Switzerland",
  city: "Montreux",
  address: "Av. Claude-Nobs 5, 1820, Montreux, Switzerland",
  start_time: DateTime.new(2022, 7, 1, 12, 0, 0),
  end_time: DateTime.new(2022, 7, 7, 23, 0, 0),
  description: "Founded in 1967 by Claude Nobs, the Montreux Jazz Festival has become over the years an unmissable event, generating legendary stories and performances.",
  event_url: "https://www.montreuxjazzfestival.com/en/",
  image_url: "https://www.montreuxjazzfestival.com/wp-content/uploads/2020/01/MITP-1536x1536.jpg"
)

# new_ticket = Ticket.new!(
#   tier: 1
# )

# new_ticket.event = event1
# new_ticket.save

# new_ticket = Ticket.new!(
#   tier: 2
# )

# new_ticket.event = event1
# new_ticket.save

# new_ticket = Ticket.new!(
#   tier: 3
# )

# new_ticket.event = event1
# new_ticket.save
