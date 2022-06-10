# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts "Cleaning up database..."
Token.destroy_all
User.destroy_all
Ticket.destroy_all
Event.destroy_all
puts "Database cleaned"

# USER LOG IN DETAILS
user1 = User.create!(
  first_name: "Rick",
  last_name: "Sanchez",
  email: "rick@gmail.com",
  password: "123456"
)

admin1 = User.create!(
  first_name: "Eric",
  last_name: "Cartman",
  email: "admin@renbo.com",
  password: "123456"
)

#---------------EVENTS---------------

# EVENT 1 = Burning Man 2022
event1 = Event.create!(
  name: "Burning Man 2022",
  category: "Festival",
  music_genre: "Electronic",
  country: "USA",
  city: "Black Rock",
  address: "Black Rock City, Nevada, USA",
  start_time: DateTime.new(2022, 8, 28, 13, 0, 0),
  end_time: DateTime.new(2022, 9, 5, 13, 0, 0),
  description: "Burning Man is an event focused on community, art, self-expression, and self-reliance held annually in the western United States",
  event_url: "https://burningman.org/",
  image_url: "https://www.wallpaperflare.com/static/66/576/958/burning-man-love-desert-gay-wallpaper-preview.jpg"
)

# EVENT 2 = Elton John Final Tour
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

# EVENT 3 = Montreux Jazz Festival
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

# EVENT 4 = Garbicz Festival
event4 = Event.create!(
  name: "Garbicz Festival 2022",
  category: "Festival",
  music_genre: "Electronic",
  country: "Poland",
  city: "Garbicz",
  address: "Garbicz Festival, 66-235, Poland",
  start_time: DateTime.new(2022, 8, 4, 12, 0, 0),
  end_time: DateTime.new(2022, 8, 7, 23, 0, 0),
  description: "A group who creates a place where different cultures and personalities can come together to enjoy the beauty of life, particularly its nature, in a place where majestic trees watch out over a crystal clear lake to form the ultimate playground.",
  event_url: "https://garbiczfestival.com/",
  image_url: "http://www.chriserlbeck.com/koken/storage/cache/images/001/187/garbicz-festival-2015DSC-4390-foto-chris-erlbeck,medium_large.1449562078.jpg"
)

# EVENT 5 = Fusion Festival Germany
event5 = Event.create!(
  name: "Fusion Festival",
  category: "Festival",
  music_genre: "Electronic",
  country: "Germany",
  city: "Lärz",
  address: "Lärz, Mecklenburg-Vorpommern, Germany",
  start_time: DateTime.new(2022, 6, 29, 12, 0, 0),
  end_time: DateTime.new(2022, 7, 3, 23, 0, 0),
  description: "The Fusion Festival is a music and arts festival with a countercultural character. It takes place at a former military airport called Müritz Airpark in Lärz, Mecklenburg-Vorpommern, in northeastern Germany. The festival name is often depicted in Cyrillic letters as Фузион, but pronounced like the English word fusion.",
  event_url: "https://www.fusion-festival.de/en/x/start",
  image_url: "https://www.maximaltrips.com/wp-content/uploads/2018/05/fusion-fest.jpg"
)

# EVENT 6 = Boom Festival 2022
event6 = Event.create!(
  name: "Boom Festival 2022",
  category: "Festival",
  music_genre: "Electronic",
  country: "Portugal",
  city: "Boomland",
  address: "Boomland, Idanha-a-Nova, Portugal",
  start_time: DateTime.new(2022, 7, 22, 12, 0, 0),
  end_time: DateTime.new(2022, 7, 29, 23, 0, 0),
  description: "The Boom Festival is a biennial transformational, multidisciplinary, psychedelic and sustainable festival that happens every two years in Portugal. Editions are in sync with the full moon.",
  event_url: "https://boomfestival.org/boom2022/",
  image_url: "https://cdn.boomfestival.org/assets/files/5903/007.1280x614.webp"
)

# EVENT 7 = Coachella 2023
event7 = Event.create!(
  name: "Coachella 2023",
  category: "Festival",
  music_genre: "Pop",
  country: "USA",
  city: "Indio",
  address: "Empire Polo Club, Indio, California",
  start_time: DateTime.new(2023, 4, 24, 12, 0, 0),
  end_time: DateTime.new(2023, 4, 15, 23, 0, 0),
  description: "The Coachella Valley Music and Arts Festival is an annual music and arts festival held at the Empire Polo Club in Indio, California, in the Coachella Valley in the Colorado Desert. It was co-founded by Paul Tollett and Rick Van Santen in 1999, and is organized by Goldenvoice, a subsidiary of AEG Presents",
  event_url: "https://www.coachella.com/",
  image_url: "https://fokusjabar.id/wp-content/uploads/2020/06/coachella-768x433.jpg"
)

#---------------NFTs for event 1 // BURNING MAN 2022---------------

ticket_tier1 = Ticket.new(
  tier: 1,
  title: "Yvonne Force Villareal",
  description: "What is reality?",
  original_price: 1500,
  no_available: 3,
  image_url: "https://djwp.s3.amazonaws.com/wp-content/uploads/2021/10/07151108/Document-Burning-Man-Sothebys-4.jpg"
)

ticket_tier1.event = event1
ticket_tier1.save!

ticket_tier2 = Ticket.new(
  tier: 2,
  title: "Man on Fire",
  description: "From flames to ashes, nothing lasts forever. Time exists only in the present.",
  original_price: 1000,
  no_available: 10,
  image_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c01661ac-198f-4af1-91c8-57af093c29e0/d4mwnlj-48be98f1-5a86-47df-901b-f136779feef1.jpg/v1/fill/w_838,h_954,q_70,strp/the_burning_man_by_innerdvisions_d4mwnlj-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MwMTY2MWFjLTE5OGYtNGFmMS05MWM4LTU3YWYwOTNjMjllMFwvZDRtd25sai00OGJlOThmMS01YTg2LTQ3ZGYtOTAxYi1mMTM2Nzc5ZmVlZjEuanBnIiwiaGVpZ2h0IjoiPD0xMDI0Iiwid2lkdGgiOiI8PTkwMCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS53YXRlcm1hcmsiXSwid21rIjp7InBhdGgiOiJcL3dtXC9jMDE2NjFhYy0xOThmLTRhZjEtOTFjOC01N2FmMDkzYzI5ZTBcL2lubmVyZHZpc2lvbnMtNC5wbmciLCJvcGFjaXR5Ijo5NSwicHJvcG9ydGlvbnMiOjAuNDUsImdyYXZpdHkiOiJjZW50ZXIifX0.xl9zzEyuvlQUj2crCwED5dsQrSXSgUK2tqGGYiLFpwM"
)

ticket_tier2.event = event1
ticket_tier2.save!

ticket_tier3 = Ticket.new(
  tier: 3,
  title: "Network of Dreamers",
  description: "Find comfort in self-reliance, and equal comfort in solidarity.",
  original_price: 750,
  no_available: 25,
  image_url: "https://www.artmajeur.com/medias/hd/y/o/youlianarkevitch-iodko/artwork/8951191_burning-man.jpg"
)

ticket_tier3.event = event1
ticket_tier3.save!

#---------------BURNING MAN TOKENS---------------

# TICKET_TIER1 BURNING MAN
3.times do
  Token.create!(
    status: "new",
    NFT_id: "1a2b3c",
    unlockable: "QRcode",
    price: 1500,
    unlocked: false,
    ticket: ticket_tier1,
    user: admin1
  )
end

# TICKET_TIER2 BURNING MAN
10.times do
  Token.create!(
    status: "new",
    NFT_id: "4d5e6f",
    unlockable: "QRcode",
    price: 1000,
    unlocked: false,
    ticket: ticket_tier2,
    user: admin1
  )
end

# TICKET_TIER3 BURNING MAN
25.times do
  Token.create!(
    status: "new",
    NFT_id: "7g8h9i",
    unlockable: "QRcode",
    price: 750,
    unlocked: false,
    ticket: ticket_tier3,
    user: admin1
  )
end

#---------------NFTs for event 2 // Elton John Final Tour---------------

ticket_tier1 = Ticket.new(
  tier: 1,
  title: "Candle in The Wind",
  description: "What would the world be without Sir Elton John",
  original_price: 300,
  no_available: 5,
  image_url: "http://i39.photobucket.com/albums/e158/mcnail/OMG9/screenprint-elton_john-goodbye_yellow_brick_road-roy_rogers-26_zpsa95ee38b.jpg~original"
)

ticket_tier1.event = event2
ticket_tier1.save!

ticket_tier2 = Ticket.new(
  tier: 2,
  title: "Rocket Man",
  description: "A memory of Elton Johns final tour",
  original_price: 200,
  no_available: 20,
  image_url: "https://render.fineartamerica.com/images/rendered/default/print/5.5/8/break/images/artworkimages/medium/3/elton-john-greatom-london.jpg"
)

ticket_tier2.event = event2
ticket_tier2.save!

ticket_tier3 = Ticket.new(
  tier: 3,
  title: "Don't Let the Sun Go Down on Me",
  description: "A collection of all famous magazine covers with Sir Elton John",
  original_price: 100,
  no_available: 50,
  image_url: "https://images.saatchiart.com/saatchi/1862146/art/8768316/7831798-OGFWMIXX-7.jpg"
)

ticket_tier3.event = event2
ticket_tier3.save!

#---------------ELTON JOHN TOKENS---------------

# TICKET_TIER1 ELTON JOHN
5.times do
  Token.create!(
    status: "new",
    NFT_id: "1a2b3c",
    unlockable: "QRcode",
    price: 300,
    unlocked: false,
    ticket: ticket_tier1,
    user: admin1
  )
end

# TICKET_TIER2 ELTON JOHN
20.times do
  Token.create!(
    status: "new",
    NFT_id: "4d5e6f",
    unlockable: "QRcode",
    price: 200,
    unlocked: false,
    ticket: ticket_tier2,
    user: admin1
  )
end

# TICKET_TIER3 ELTON JOHN
50.times do
  Token.create!(
    status: "new",
    NFT_id: "1a2b3c",
    unlockable: "QRcode",
    price: 100,
    unlocked: false,
    ticket: ticket_tier3,
    user: admin1
  )
end

#---------------NFTs for event 3 // Montreux Jazz Festival---------------

ticket_tier1 = Ticket.new(
  tier: 1,
  title: "Squish Swiss",
  description: "A priceless moment from the the Montreux Jazz Festival",
  original_price: 500,
  no_available: 10,
  image_url: "https://media.artsper.com/artwork/1458213_1_m.jpg"
)

ticket_tier1.event = event3
ticket_tier1.save!

ticket_tier2 = Ticket.new(
  tier: 2,
  title: "Nina Simone im Schweiz ",
  description: "In memory of a legend",
  original_price: 250,
  no_available: 50,
  image_url: "https://images.theabsolutesound.com/wp-content/uploads/2021/06/nina-simon-montreux.jpeg"
)

ticket_tier2.event = event3
ticket_tier2.save!

ticket_tier3 = Ticket.new(
  tier: 3,
  title: "Neon Jazz",
  description: "A piece of time presented in an illustration",
  original_price: 200,
  no_available: 100,
  image_url: "https://creativereview.imgix.net/content/uploads/2020/06/MJF20-Silent-Shores-Affiches-FrancBord-Giovanni-Riva.jpg?auto=compress,format&q=60&w=768&h=1075"
)

ticket_tier3.event = event3
ticket_tier3.save!
