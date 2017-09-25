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
  neighborhood: 'Potrero Hill',
  lat: 37.766481,
  long: -122.397142,
  phone: '(415) 967-2622',
  site_url: 'https://www.bobaguys.com/',
  menu_url: 'https://www.bobaguys.com/menu/',
  category: 'Bubble Tea',
  rating: 4,
  cost: '$',
  hours: 'Mon, Closed,
          Tue, 9:00 am - 7:00 pm,
          Wed, 9:00 am - 7:00 pm,
          Thu, 9:00 am - 7:00 pm,
          Fri, 9:00 am - 7:00 pm,
          Sat, 12:00 pm - 8:00 pm,
          Sun, 12:00 pm - 6:00 pm',
  health_score: 90
)

Business.create(
  name: 'Mr. and Mrs. Miscellaneous',
  img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/UEtTcuWl6mMKArY5fODiAA/o.jpg',
  address: '699 22nd St, San Francisco, CA 94107',
  cross_streets: '3rd St & Illinois St',
  neighborhood: 'Dogpatch, Potrero Hill',
  lat: 37.757807,
  long: -122.388116,
  phone: '(415) 970-0750',
  category: 'Ice Cream',
  rating: 4.5,
  cost: '$',
  hours: 'Mon, Closed,
          Tue, Closed,
          Wed, 11:30 am - 6:00 pm,
          Thu, 11:30 am - 6:00 pm,
          Fri, 11:30 am - 6:00 pm,
          Sat, 11:30 am - 6:00 pm,
          Sun, 11:30 am - 5:00 pm',
  health_score: 98
)

Business.create(
  name: 'Tin Pot Creamery - Palo Alto',
  img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/kck1WGQ0nnw0Z6j3W9FtZQ/o.jpg',
  address: '855 El Camino Real Ste 121, Palo Alto, CA 94301',
  cross_streets: 'Post St & Hemlock St',
  lat: 37.438707,
  long: -122.158960,
  phone: '(650) 327-1715',
  site_url: 'http://www.tinpotcreamery.com/',
  menu_url: 'http://www.tinpotcreamery.com/scoop-shops/palo-alto/#paMenu',
  category: 'Ice Cream',
  rating: 5,
  cost: '$$',
  hours: 'Mon, 11:00 am - 9:00 pm,
          Tue, 11:00 am - 9:00 pm,
          Wed, 11:00 am - 9:00 pm,
          Thu, 11:00 am - 9:00 pm,
          Fri, 11:00 am - 10:00 pm,
          Sat, 11:00 am - 10:00 pm,
          Sun, 11:00 am - 9:00 pm'
)

Business.create(
  name: 'Chantal Guillon',
  img_url: 'https://s3-media4.fl.yelpcdn.com/bphoto/cVk72YkYxrF17myMHAp1dQ/o.jpg',
  address: '437 Hayes St Ste A, San Francisco, CA 94102',
  cross_streets: 'Octavia St & Gough St',
  neighborhood: 'Hayes Valley',
  lat: 37.776532,
  long: -122.423629,
  phone: '(415) 864-2400',
  site_url: 'https://www.chantalguillon.com/',
  menu_url: 'https://www.chantalguillon.com/flavors',
  category: 'Macarons',
  rating: 4.5,
  cost: '$$$',
  hours: 'Mon, 11:00 am - 7:00 pm,
          Tue, 11:00 am - 7:00 pm,
          Wed, 11:00 am - 7:00 pm,
          Thu, 11:00 am - 7:00 pm,
          Fri, 11:00 am - 7:00 pm,
          Sat, 11:00 am - 7:00 pm,
          Sun, 11:00 am - 7:00 pm',
  health_score: 98
)

Business.create(
  name: 'B. Patisserie',
  img_url: 'https://s3-media4.fl.yelpcdn.com/bphoto/cVk72YkYxrF17myMHAp1dQ/o.jpg',
  address: '2821 California St, San Francisco, CA 94115',
  cross_streets: 'Divisadero St & Broderick St',
  neighborhood: 'Lower Pacific Heights',
  lat: 37.787811,
  long: -122.440714,
  phone: '(415) 440-1700',
  site_url: 'http://www.bpatisserie.com/',
  menu_url: 'http://www.bpatisserie.com/menu/',
  category: 'Bakery',
  rating: 4,
  cost: '$$',
  hours: 'Mon, Closed,
          Tue, 8:00 am - 6:00 pm,
          Wed, 8:00 am - 6:00 pm,
          Thu, 8:00 am - 6:00 pm,
          Fri, 8:00 am - 6:00 pm,
          Sat, 8:00 am - 6:00 pm,
          Sun, 8:00 am - 6:00 pm',
  health_score: 90
)

Business.create(
  name: 'Garden Creamery',
  img_url: 'https://s3-media4.fl.yelpcdn.com/bphoto/B3bLo5PqvSV8SYVwmTRjtg/o.jpg',
  address: '3566 20th St San Francisco, CA 94110',
  cross_streets: 'San Carlos St & Lexington St',
  neighborhood: 'Mission',
  lat: 37.758582,
  long: -122.420475,
  phone: '(808) 224-6626',
  site_url: 'http://www.gardencreamery.com/home/',
  menu_url: 'http://www.gardencreamery.com/products/',
  category: 'Ice Cream',
  rating: 3.5,
  cost: '$',
  hours: 'Mon, Closed,
          Tue, Closed,
          Wed, 6:00 pm - 10:30 pm,
          Thu, 6:00 pm - 10:30 pm,
          Fri, 6:00 pm - 11:00 pm,
          Sat, 12:00 pm - 11:00 pm,
          Sun, 12:00 pm - 10:00 pm',
  health_score: 98
)

Business.create(
  name: 'Arsicault Bakery',
  img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/N_oH8pvLZ2A-4b2wYZUGFg/o.jpg',
  address: '397 Arguello Blvd, San Francisco, CA 94118',
  cross_streets: 'Euclid Ave & Cornwall St',
  neighborhood: 'Inner Richmond',
  lat: 37.783421,
  long: -122.459264,
  phone: '(415) 750-9460',
  category: 'Bakery',
  rating: 4.5,
  cost: '$$',
  hours: 'Mon, Closed,
          Tue, Closed,
          Wed, 7:00 am - 2:30 pm,
          Thu, 7:00 am - 2:30 pm,
          Fri, 7:00 am - 2:30 pm,
          Sat, 8:00 am - 3:30 pm,
          Sun, 8:00 am - 3:30 pm',
  health_score: 96
)

Business.create(
  name: 'Milkbomb Ice Cream',
  img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/reHD0k3eSTpNZAOzseVJMQ/o.jpg',
  address: '1717 17th St Ste 105, San Francisco, CA 94107',
  neighborhood: 'Potrero Hill',
  lat: 37.764481,
  long: -122.401318,
  phone: '(415) 780-4429',
  site_url: 'https://www.milkbombicecream.com/',
  category: 'Bakery',
  rating: 4,
  cost: '$$',
  hours: 'Mon, 1:00 pm - 7:30 pm,
          Tue, 1:00 pm - 7:30 pm,
          Wed, 1:00 pm - 7:30 pm,
          Thu, 1:00 pm - 7:30 pm,
          Fri, 1:00 pm - 9:00 pm,
          Sat, 1:15 pm - 9:00 pm,
          Sun, 12:30 pm - 9:00 pm'
)

Business.create(
  name: 'Manresa Bread - Los Altos',
  img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/_h8eSaiKoUdyy9oCbdGHRA/o.jpg',
  address: '271 State St, Los Altos, CA 94022',
  lat: 37.379202,
  long: -122.117033,
  phone: '(650) 946-2293',
  site_url: 'https://www.manresabread.com/',
  menu_url: 'http://www.pre-ordermanresabread.com/',
  category: 'Bakery',
  rating: 4.5,
  cost: '$$$',
  hours: 'Mon, 7:00 am - 3:00 pm,
          Tue, 7:00 am - 3:00 pm,
          Wed, 7:00 am - 3:00 pm,
          Thu, 7:00 am - 3:00 pm,
          Fri, 7:00 am - 3:00 pm,
          Sat, 7:00 am - 3:00 pm,
          Sun, 7:00 am - 3:00 pm'
)

Business.create(
  name: 'Tartine Bakery',
  img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/Yg2yB2gOZDuiWuek_q1zYA/o.jpg',
  address: '600 Guerrero St, San Francisco, CA 94110',
  neighborhood: 'Mission',
  lat: 37.761400,
  long: -122.424109,
  phone: '(415) 487-2600',
  site_url: 'http://www.tartinebakery.com/',
  menu_url: 'http://www.tartinebakery.com/menus-ordering/',
  category: 'Bakery',
  rating: 5,
  cost: '$$',
  hours: 'Mon, 8:00 am - 7:00 pm,
          Tue, 7:30 am - 7:00 pm,
          Wed, 7:30 am - 7:00 pm,
          Thu, 7:30 am - 8:00 pm,
          Fri, 7:30 am - 8:00 pm,
          Sat, 8:00 am - 8:00 pm,
          Sun, 8:00 am - 8:00 pm',
  health_score: 89
)
