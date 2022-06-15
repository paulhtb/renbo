# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts "Cleaning up database..."
Transaction.destroy_all
CartItem.destroy_all
Cart.destroy_all
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
file = File.open(Rails.root.join("app/assets/images/rick.png"))
user1.avatar.attach(io: file, filename: 'rick.png', content_type: 'image/png')

admin1 = User.create!(
  first_name: "Eric",
  last_name: "Cartman",
  email: "admin@renbo.com",
  password: "123456"
)

#---------------FESTIVAL SEEDS---------------#

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
  description: "Burning Man is an annual event in Nevada's Black Rock Desert, where people gather for around nine days to celebrate artistic self-expression and the building of a community intended to be temporarily self-sufficient. It's popularly thought of as a surreal counterculture party in the desert",
  event_url: "https://burningman.org/",
  image_url: "https://www.wallpaperflare.com/static/66/576/958/burning-man-love-desert-gay-wallpaper-preview.jpg"
)


# EVENT 2 = Montreux Jazz Festival
event2 = Event.create!(
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

# EVENT 3 = Garbicz Festival
event3 = Event.create!(
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
  image_url: "https://scontent-sea1-1.xx.fbcdn.net/v/t1.6435-9/57471772_2203336073084784_3816086289401249792_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeEtxUEN3x4iHM7OIKbXrlB9BhP8IOf9WbUGE_wg5_1Zte6cEjV3FRoTAd0GvE3you0&_nc_ohc=2zbLcWiIm4cAX_yVE4L&_nc_ht=scontent-sea1-1.xx&oh=00_AT94VMBFoY4kWTpt9yRp6Gc8SZCEguNze9k_sQYawBOLSg&oe=62C75DF2"
)

# EVENT 4 = Fusion Festival Germany
event4 = Event.create!(
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

# EVENT 5 = Boom Festival 2022
event5 = Event.create!(
  name: "Boom Festival 2022",
  category: "Festival",
  music_genre: "Electronic",
  country: "Portugal",
  city: "Boomland",
  address: "Boomland, Idanha-a-Nova, Portugal",
  start_time: DateTime.new(2022, 7, 22, 10, 0, 0),
  end_time: DateTime.new(2022, 7, 29, 22, 0, 0),
  description: "The Boom Festival is a biennial transformational, multidisciplinary, psychedelic and sustainable festival that happens every two years in Portugal. Editions are in sync with the full moon.",
  event_url: "https://boomfestival.org/boom2022/",
  image_url: "https://cdn.boomfestival.org/assets/files/5903/007.1280x614.webp"
)

# EVENT 6 = Coachella 2023
event6 = Event.create!(
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
  image_url: "https://media.resources.festicket.com/www/magazine/Coachella22Lineup_L.jpg"
)

# EVENT 7 = Glastonbury Festival 2022
event7 = Event.create!(
  name: "Glastonbury Festival",
  category: "Festival",
  music_genre: "Pop",
  country: "England",
  city: "Pilton",
  address: "Pilton, Somerset, England",
  start_time: DateTime.new(2022, 4, 15, 23, 0, 0),
  end_time: DateTime.new(2022, 5, 5, 23, 0, 0),
  description: "Glastonbury Festival is a five-day festival of contemporary performing arts that takes place in Pilton, Somerset, in England. In addition to contemporary music, the festival hosts dance, comedy, theatre, circus, cabaret, and other arts.",
  event_url: "https://www.glastonburyfestivals.co.uk/",
  image_url: "https://www.attackmagazine.com/wp-content/uploads/2020/05/TELEMMGLPICT000220832930_transaRL1kC4G7DT9ZsZm6Pe3PehAFAI_f6ud569StXyOKH0-856x535.jpeg"
)

# EVENT 8 = Bass Coast Festival
event8 = Event.create!(
  name: "Bass Coast Festival",
  category: "Festival",
  music_genre: "Electronic",
  country: "Canada",
  city: "Logan Lake",
  address: "Thompson-Nicola N, BC V0K 1W0, Canada",
  start_time: DateTime.new(2022, 7, 8, 10, 0, 0),
  end_time: DateTime.new(2022, 7, 12, 15, 0, 0),
  description: "A DIY endeavour founded and run by women with no sponsors or corporate presence whatsoever, it is a unique fixture in a region already known for its plethora of festivals.",
  event_url: "https://cdn.shopify.com/s/files/1/1477/7688/files/basscoast_2019_main_album_21_1900x.jpg",
  image_url: "http://cdn.shopify.com/s/files/1/1477/7688/files/basscoast_home_share_1200x.jpg?v=6739143513087343727"
)

# EVENT 9 = Afrika Burn 2022
event9 = Event.create!(
  name: "Afrika Burn 2023",
  category: "Festival",
  music_genre: "Electronic",
  country: "South Africa",
  city: "Tankwa Karoo",
  address: "Tankwa Karoo",
  start_time: DateTime.new(2023, 4, 25, 23, 0, 0),
  end_time: DateTime.new(2023, 5, 4, 23, 0, 0),
  description: "The spectacular result of the creative expression of participants who gather once a year in the Tankwa Karoo to create a temporary city of art, theme camps, costume, music and performance!",
  event_url: "https://www.afrikaburn.com/",
  image_url: "https://s3.amazonaws.com/fest-production/2016/09/13/01/29/55/559/BRLS_Burning%20Man_Jesse%20Rather_3%20(1).jpg"
)

# EVENT 10 = Lightning in a Bottle Festival 2023
event10 = Event.create!(
  name: "Lightning in a Bottle 2023",
  category: "Festival",
  music_genre: "Electronic",
  country: "USA",
  city: "Bakersfield",
  address: "13601 Ironbark Rd, Bakersfield, CA 93311",
  start_time: DateTime.new(2023, 5, 25, 13, 0, 0),
  end_time: DateTime.new(2023, 5, 30, 22, 0, 0),
  description: "Lightning in a Bottle is an annual music festival in the Central Valley region of California first held in 2006. It is presented by The Do LaB, which seeks to promote sustainability, social cohesion, and creative expression",
  event_url: "https://www.libfestival.org/homepage",
  image_url: "https://media.timeout.com/images/105596607/750/422/image.jpg"
)

# EVENT 11 = Symbiosis Gathering 2022
event11 = Event.create!(
  name: "Symbiosis Gathering 2022",
  category: "Festival",
  music_genre: "Electronic",
  country: "USA",
  city: "Woodward Reservoir",
  address: "Woodward Reservoir, California 95361, USA",
  start_time: DateTime.new(2023, 4, 15, 23, 0, 0),
  end_time: DateTime.new(2023, 4, 15, 23, 0, 0),
  description: "Symbiosis intends to facilitate peak experiences through a synaesthesia of art, music, transformational learning, and sustainable living integrated into an unparalleled extravaganza of fun beneath the starry skies.",
  event_url: "http://symbiosisgathering.com/",
  image_url: "http://oregoneclipse2017.com/wp-content/uploads/2016/07/environments-1024x615.jpeg"
)

# EVENT 12 = Tribal Gathering 2023
event12 = Event.create!(
  name: "Tribal Gathering 2023",
  category: "Festival",
  music_genre: "Electronic",
  country: "Panama",
  city: "Playa Chiquita",
  address: "HP4R+X9Q, Playa Chiquita, Panama",
  start_time: DateTime.new(2022, 3, 4, 23, 0, 0),
  end_time: DateTime.new(2022, 3, 19, 23, 0, 0),
  description: "Tribal Gathering is so much more than a music festival. Its 18 days on a Caribbean beach, around 200 workshops and presentations, hundreds of musicians from around the world, a learning journey from the ancient to the modern and one of the worlds most important indigenous cultural celebrations.",
  event_url: "https://www.tribalgathering.com/",
  image_url: "https://images.squarespace-cdn.com/content/v1/5ad8b225a9e0285e85188ca6/da511a1d-6687-4bb5-a7a1-d075a7598371/tribal-gathering-geoparadise-panama.jpg?format=1000w"
)

#---------------PERFORMANCE SEEDS--------------#

# EVENT 13 = Kaytranada
event13 = Event.create!(
  name: "Kaytranada @ La Clairière",
  category: "Performance",
  music_genre: "Hip Hop",
  country: "France",
  city: "Paris",
  address: "1 Carr de Longchamp, 75016 Paris, France",
  start_time: DateTime.new(2022, 6, 24, 22, 0, 0),
  end_time: DateTime.new(2022, 6, 25, 1, 0, 0),
  description: "Louis Kevin Celestin, known professionally as Kaytranada, is a Haitian-Canadian record producer and DJ. Celestin rose to prominence after releasing a series of mixtapes, remixes, and original music projects beginning in 2010 under the alias Kaytradamus",
  event_url: "https://www.kaytranada.com/",
  image_url: "https://suaramerdekajkt.com/wp-content/uploads/2021/04/kaytranada-2-sonar-bcn-2019-768x450.jpg"
)

# EVENT 14 = Alt-J
event14 = Event.create!(
  name: "alt-J @ AFAS Live",
  category: "Performance",
  music_genre: "Rock",
  country: "Netherlands",
  city: "Amsterdam",
  address: "Johan Cruijff Boulevard 590, 1101 DS Amsterdam, Netherlands",
  start_time: DateTime.new(2022, 11, 24, 20, 0, 0),
  end_time: DateTime.new(2022, 11, 24, 23, 0, 0),
  description: "Alt-J are an English indie rock band formed in 2007 in Leeds, by Joe Newman, Thom Sonny Green, Gus Unger-Hamilton and Gwilym Sainsbury. Their debut album An Awesome Wave was released in May 2012 in Europe, and in September 2012 in the United States, and won the 2012 British Mercury Prize.",
  event_url: "https://www.altjband.com/",
  image_url: "https://dynamicmedia.livenationinternational.com/Media/m/j/p/c591bf8e-093b-4577-8c1c-d2b4e69469be.jpg"
)

# EVENT 15 = Lane 8
event15 = Event.create!(
  name: "Lane 8 @ Stanley Park Pavilion",
  category: "Performance",
  music_genre: "Electronic",
  country: "Canada",
  city: "Vancouver",
  address: "610 Pipeline Rd, Vancouver, BC V6G 3E2, Canada",
  start_time: DateTime.new(2022, 9, 2, 20, 0, 0),
  end_time: DateTime.new(2022, 9, 2, 23, 0, 0),
  description: "Daniel Goldstein, better known by his stage name Lane 8, is an American musician, electronic music producer, and DJ. Currently residing in Denver, Colorado, he is signed to English deep house label Anjunadeep.",
  event_url: "https://lane8music.com/",
  image_url: "https://weraveyou.com/wp-content/uploads/2021/01/Lane-8.jpg"
)

# EVENT 16 = Elton John Final Tour
event16 = Event.create!(
  name: "Elton John Farewell Tour @ O2",
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

# EVENT 17 = Khruangbin Tour
event17 = Event.create!(
  name: "Khruangbin @ Germania Insurance Amphitheater",
  category: "Performance",
  music_genre: "Rock",
  country: "USA",
  city: "Austin",
  address: "9201 Circuit of the Americas Blvd, Del Valle, TX 78617, United States",
  start_time: DateTime.new(2022, 9, 24, 20, 0, 0),
  end_time: DateTime.new(2022, 9, 24, 22, 30, 0),
  description: "Khruangbin is an American musical trio from Houston, Texas. The band comprises Laura Lee on bass, Mark Speer on guitar, and Donald 'DJ' Johnson Jr. on drums. The band is known for blending global music influences, such as classic soul, dub, rock and psychedelia.",
  event_url: "https://www.khruangbin.com/",
  image_url: "https://www.ricedesignalliance.org/sites/default/files/images/main/blog/khruangbin_group1.jpg"
)

# Event 18 = Fleetwood Mac Performance
event18 = Event.create!(
  name: "Fleetwood Mac @ Webster Hall",
  category: "Performance",
  music_genre: "Rock",
  country: "USA",
  city: "New York City",
  address: "125 E 11th St, New York, NY 10003, United States",
  start_time: DateTime.new(2022, 6, 18, 19, 0, 0),
  end_time: DateTime.new(2022, 6, 18, 21, 0, 0),
  description: "Fleetwood Mac are a British-American rock band, formed in London in 1967. Fleetwood Mac were founded by guitarist Peter Green, drummer Mick Fleetwood and guitarist Jeremy Spencer, before bassist John McVie joined the line-up for their self-titled debut album. Danny Kirwan joined as a third guitarist in 1968.",
  event_url: "https://www.fleetwoodmac.com/",
  image_url: "https://www.rollingstone.com/wp-content/uploads/2018/06/fleetwood-mac-new-lineup-first-picture-2018-77e1da91-6a10-46d3-8b48-a203c150139c.jpg?resize=1800,1200&w=1200"
)

#----------------NFTs for event 1 // BURNING MAN 2022----------------

ticket_tier1 = Ticket.new(
  tier: 1,
  title: "Yvonne Force Villareal",
  description: "VIP Burning Man
  • A private mid-jet from the LA area to to Burning Man
  • Daily water supply",
  original_price: 1500,
  no_available: 3,
  VIP: true,
  image_url: "https://djwp.s3.amazonaws.com/wp-content/uploads/2021/10/07151108/Document-Burning-Man-Sothebys-4.jpg"
)

ticket_tier1.event = event1
ticket_tier1.save!

ticket_tier2 = Ticket.new(
  tier: 2,
  title: "Man on Fire",
  description: "• Musical entertainment in the camp • Burner Survival Kit with bikes, decorations, lights, camel bag, cup, etc. • Daily water supply",
  original_price: 1000,
  no_available: 10,
  VIP: false,
  image_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c01661ac-198f-4af1-91c8-57af093c29e0/d4mwnlj-48be98f1-5a86-47df-901b-f136779feef1.jpg/v1/fill/w_838,h_954,q_70,strp/the_burning_man_by_innerdvisions_d4mwnlj-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2MwMTY2MWFjLTE5OGYtNGFmMS05MWM4LTU3YWYwOTNjMjllMFwvZDRtd25sai00OGJlOThmMS01YTg2LTQ3ZGYtOTAxYi1mMTM2Nzc5ZmVlZjEuanBnIiwiaGVpZ2h0IjoiPD0xMDI0Iiwid2lkdGgiOiI8PTkwMCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS53YXRlcm1hcmsiXSwid21rIjp7InBhdGgiOiJcL3dtXC9jMDE2NjFhYy0xOThmLTRhZjEtOTFjOC01N2FmMDkzYzI5ZTBcL2lubmVyZHZpc2lvbnMtNC5wbmciLCJvcGFjaXR5Ijo5NSwicHJvcG9ydGlvbnMiOjAuNDUsImdyYXZpdHkiOiJjZW50ZXIifX0.xl9zzEyuvlQUj2crCwED5dsQrSXSgUK2tqGGYiLFpwM"
)

ticket_tier2.event = event1
ticket_tier2.save!

ticket_tier3 = Ticket.new(
  tier: 3,
  title: "Network of Dreamers",
  description: "• Selection of costumes
  • Segway & burner transportation rentals. • Daily water supply.",
  original_price: 750,
  no_available: 25,
  VIP: false,
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
  description: "VIP status gets you and invitation to join Sir Elton John at a private group dinner, and backstage access to the show.",
  original_price: 300,
  no_available: 5,
  VIP: true,
  image_url: "http://i39.photobucket.com/albums/e158/mcnail/OMG9/screenprint-elton_john-goodbye_yellow_brick_road-roy_rogers-26_zpsa95ee38b.jpg~original"
)

ticket_tier1.event = event2
ticket_tier1.save!

ticket_tier2 = Ticket.new(
  tier: 2,
  title: "Rocket Man",
  description: "This NFT comes complete with access to a private piano show in the hotel of Elton John",
  original_price: 200,
  no_available: 20,
  VIP: false,
  image_url: "https://render.fineartamerica.com/images/rendered/default/print/5.5/8/break/images/artworkimages/medium/3/elton-john-greatom-london.jpg"
)

ticket_tier2.event = event2
ticket_tier2.save!

ticket_tier3 = Ticket.new(
  tier: 3,
  title: "Don't Let the Sun Go Down on Me",
  description: "You will recieve a signed copy of a rare Elton John record.",
  original_price: 100,
  no_available: 50,
  VIP: false,
  image_url: "https://i.pinimg.com/originals/8d/95/48/8d9548ae614a5ca476763ee4c90b3df4.jpg"
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
