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
  start_time: "28/08/22",
  end_time: "05/09/22",
  description: "Burning Man is an event focused on community, art, self-expression, and self-reliance held annually in the western United States",
  event_url: "https://burningman.org/"
)

event2 = Event.create!(
  name: "Elton John Farewell Tour",
  category: "Performance",
  music_genre: "Rock",
  country: "United Kingdom",
  city: "London",
  address: "The O2, Peninsula Square, London, United Kingdom",
  start_time: "02/04/23",
  end_time: "02/04/23",
  description: "Farewell Yellow Brick Road is an ongoing tour by English musician Elton John that began in Allentown, Pennsylvania on 8 September 2018. It is intended to be John's final tour and will consist of more than 300 concerts worldwide",
  event_url: "https://www.eltonjohn.com/"
)

event3 = Event.create!(
  name: "Montreux Jazz Festival",
  category: "Festival",
  music_genre: "Jazz",
  country: "Switzerland",
  city: "Montreux",
  address: "Av. Claude-Nobs 5, 1820, Montreux, Switzerland",
  start_time: "01/07/22",
  end_time: "07/07/22",
  description: "Founded in 1967 by Claude Nobs, the Montreux Jazz Festival has become over the years an unmissable event, generating legendary stories and performances.",
  event_url: "https://www.montreuxjazzfestival.com/en/"
)
