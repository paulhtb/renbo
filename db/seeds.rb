# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(
  first_name: "Rick",
  last_name: "Sanchez",
  email: "rick@gmail.com",
  password: "123456",

)

# event1 = Event.new!(
#   name: "Burning Man 2022"
#   category: "Festival"
#   music_genre: "Electronic"
#   country: "USA"
#   city: "Black Rock City"
#   address: "Black Rock Desert"
#   start_time: "28/08/22"
#   end_time: "05/09/22"
#   description: "Burning Man is an event focused on community, art, self-expression, and self-reliance held annually in the western United States"
#   event_url: "https://burningman.org/"
# )

# event2 = Event.new!(
#   name:
#   category:
#   music_genre:
#   country:
#   city:
#   address:
#   start_time:
#   end_time:
#   description:
#   event_url:
# )

# event3 = Event.new!(
#   name:
#   category:
#   music_genre:
#   country:
#   city:
#   address:
#   start_time:
#   end_time:
#   description:
#   event_url:
# )
