# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Business.delete_all

User.create(username: 'guest user', password: '123456')

Business.create(
  name: 'Boba Guys - Potrero',
  img_url: 'https://s3-media4.fl.yelpcdn.com/bphoto/FrcxSuTVhXQq8puPUkBx-Q/o.jpg',
  address: '1002 16th St, San Francisco, CA 94107',
  cross_streets: 'Connecticut St & Daggett St',
  lat: 37.766481,
  long: -122.397142,
  phone: '(415) 967-2622',
  site_url: 'https://www.bobaguys.com/',
  category: 'bubble tea',
  cost: '$'
)

Business.create(
  name: 'Mr. and Mrs. Miscellaneous',
  img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/UEtTcuWl6mMKArY5fODiAA/o.jpg',
  address: '699 22nd St, San Francisco, CA 94107',
  cross_streets: '3rd St & Illinois St',
  lat: 37.757807,
  long: -122.388116,
  phone: '(415) 970-0750',
  category: 'ice cream',
  cost: '$'
)

Business.create(
  name: 'Mr. Holmes Bakehouse',
  img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/oJHweYtgRPBRT3Ee1r9OFQ/o.jpg',
  address: '1042 Larkin St, San Francisco, CA 94109',
  cross_streets: 'Post St & Hemlock St',
  lat: 37.787641,
  long: -122.418208,
  phone: '(415) 829-7700',
  site_url: 'http://www.mrholmesbakehouse.com/',
  category: 'bakery',
  cost: '$$'
)

Business.create(
  name: 'B. Patisserie',
  img_url: 'https://s3-media4.fl.yelpcdn.com/bphoto/cVk72YkYxrF17myMHAp1dQ/o.jpg',
  address: '2821 California St, San Francisco, CA 94115',
  cross_streets: 'Divisadero St & Broderick St',
  lat: 37.787811,
  long: -122.440714,
  phone: '(415) 440-1700',
  site_url: 'http://bpatisserie.com/',
  category: 'bakery',
  cost: '$$'
)

Business.create(
  name: 'Garden Creamery',
  img_url: 'https://s3-media4.fl.yelpcdn.com/bphoto/B3bLo5PqvSV8SYVwmTRjtg/o.jpg',
  address: '3566 20th St San Francisco, CA 94110',
  cross_streets: 'San Carlos St & Lexington St',
  lat: 37.758582,
  long: -122.420475,
  phone: '(808) 224-6626',
  site_url: 'http://gardencreamery.com/home/',
  category: 'ice cream',
  cost: '$'
)

Business.create(
  name: 'Arsicault Bakery',
  img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/N_oH8pvLZ2A-4b2wYZUGFg/o.jpg',
  address: '397 Arguello Blvd, San Francisco, CA 94118',
  cross_streets: 'Euclid Ave & Cornwall St',
  lat: 37.783421,
  long: -122.459264,
  phone: '(415) 750-9460',
  category: 'bakery',
  cost: '$$'
)

Business.create(
  name: 'Milkbomb Ice Cream',
  img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/rG-rOhtTZIkV2cDl1wFHVQ/o.jpg',
  address: '1717 17th St Ste 105, San Francisco, CA 94107',
  lat: 37.764481,
  long: -122.401318,
  phone: '(415) 780-4429',
  site_url: 'https://www.milkbombicecream.com/',
  category: 'bakery',
  cost: '$$'
)

Business.create(
  name: 'Starter Bakery',
  img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/n1o5FHDzmO-bcqX7fSZ5dQ/o.jpg',
  address: '1552 Beach St Ste R, Oakland, CA 94608',
  lat: 37.829142,
  long: -122.290602,
  phone: '(510) 547-6400',
  site_url: 'http://starterbakery.com/',
  category: 'bakery',
  cost: '$'
)

Business.create(
  name: 'Manresa Bread - Los Altos',
  img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/_h8eSaiKoUdyy9oCbdGHRA/o.jpg',
  address: '271 State St, Los Altos, CA 94022',
  lat: 37.379202,
  long: -122.117033,
  phone: '(650) 946-2293',
  site_url: 'https://www.manresabread.com/',
  category: 'bakery',
  cost: '$$$'
)

Business.create(
  name: 'Tartine Bakery',
  img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/Yg2yB2gOZDuiWuek_q1zYA/o.jpg',
  address: '600 Guerrero St, San Francisco, CA 94110',
  lat: 37.761400,
  long: -122.424109,
  phone: '(415) 487-2600',
  site_url: 'http://www.tartinebakery.com/',
  category: 'bakery',
  cost: '$$'
)
