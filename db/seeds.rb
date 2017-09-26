# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Business.delete_all
Review.delete_all

User.create(username: 'guest user', password: '123456')

Business.create(
  name: 'Boba Guys - Potrero',
  img_url: 'https://s3-media4.fl.yelpcdn.com/bphoto/FrcxSuTVhXQq8puPUkBx-Q/o.jpg,
            https://s3-media3.fl.yelpcdn.com/bphoto/lnLoF9kIWf1K8BwB7pevtQ/o.jpg,
            https://s3-media1.fl.yelpcdn.com/bphoto/STfx_WxldlqgncroxEI0yA/o.jpg',
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
  img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/UEtTcuWl6mMKArY5fODiAA/o.jpg,
            https://s3-media1.fl.yelpcdn.com/bphoto/I_P4tqn0DrYdZeDxAFhucQ/o.jpg,
            https://s3-media2.fl.yelpcdn.com/bphoto/eS05RL0NSJOnkmfhJ_9vDA/o.jpg',
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
  img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/kck1WGQ0nnw0Z6j3W9FtZQ/o.jpg,
            https://s3-media2.fl.yelpcdn.com/bphoto/o0yZeWkI-ItLRkQ0P3EC6w/o.jpg,
            https://s3-media1.fl.yelpcdn.com/bphoto/4D03Qystx4hu4dAXe_ozCg/o.jpg',
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
  img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/w46kcbtoCvL-LeKj47uFBg/o.jpg,
            https://s3-media3.fl.yelpcdn.com/bphoto/0JVOM2w2fjAoTswdx-IRIA/o.jpg,
            https://s3-media1.fl.yelpcdn.com/bphoto/MGhBZ6EHb53jkONxLor4nw/o.jpg',
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
  name: 'Tartine Bakery',
  img_url: 'http://www.tartinebakery.com/stickybun/wp-content/uploads/2013/04/151.jpg,
            https://s3-media2.fl.yelpcdn.com/bphoto/Yg2yB2gOZDuiWuek_q1zYA/o.jpg,
            https://s3-media1.fl.yelpcdn.com/bphoto/gxMtWzJnldz2_8iTdT5oSA/o.jpg',
  address: '600 Guerrero St, San Francisco, CA 94110',
  neighborhood: 'Mission',
  lat: 37.761400,
  long: -122.424109,
  phone: '(415) 487-2600',
  site_url: 'http://www.tartinebakery.com/',
  menu_url: 'http://www.tartinebakery.com/menus-ordering/',
  category: 'Bakery',
  rating: 5,
  cost: '$$$',
  hours: 'Mon, 8:00 am - 7:00 pm,
          Tue, 7:30 am - 7:00 pm,
          Wed, 7:30 am - 7:00 pm,
          Thu, 7:30 am - 8:00 pm,
          Fri, 7:30 am - 8:00 pm,
          Sat, 8:00 am - 8:00 pm,
          Sun, 8:00 am - 8:00 pm',
  health_score: 89
)

Business.create(
  name: 'B. Patisserie',
  img_url: 'https://s3-media4.fl.yelpcdn.com/bphoto/cVk72YkYxrF17myMHAp1dQ/o.jpg,
            https://s3-media2.fl.yelpcdn.com/bphoto/XuqzinleL3dRLMfQfxcDqg/o.jpg,
            https://s3-media4.fl.yelpcdn.com/bphoto/-s4vJyj65E5q88MjpnIMSA/o.jpg',
  address: '2821 California St, San Francisco, CA 94115',
  cross_streets: 'Divisadero St & Broderick St',
  neighborhood: 'Lower Pacific Heights',
  lat: 37.787811,
  long: -122.440714,
  phone: '(415) 440-1700',
  site_url: 'http://www.bpatisserie.com/',
  menu_url: 'http://www.bpatisserie.com/menu/',
  category: 'Bakery, Maracons',
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
  img_url: 'https://s3-media4.fl.yelpcdn.com/bphoto/B3bLo5PqvSV8SYVwmTRjtg/o.jpg,
            https://s3-media2.fl.yelpcdn.com/bphoto/Uu5cMasovMu_QQUFb9BsYw/o.jpg,
            https://s3-media3.fl.yelpcdn.com/bphoto/HVa2vD1kyj_Km8Bm3fdtyQ/o.jpg',
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
  img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/svFkea-33GiBI2wjaFuRoA/o.jpg,
            https://s3-media1.fl.yelpcdn.com/bphoto/AySzaVwDqgd8MRA-n5VDMA/o.jpg,
            https://s3-media3.fl.yelpcdn.com/bphoto/N_oH8pvLZ2A-4b2wYZUGFg/o.jpg',
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
  img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/reHD0k3eSTpNZAOzseVJMQ/o.jpg,
            https://s3-media1.fl.yelpcdn.com/bphoto/rG-rOhtTZIkV2cDl1wFHVQ/o.jpg,
            https://s3-media1.fl.yelpcdn.com/bphoto/qyiltmWa4T0FqHs4PYg9og/o.jpg',
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
  img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/_h8eSaiKoUdyy9oCbdGHRA/o.jpg,
            https://s3-media3.fl.yelpcdn.com/bphoto/amCpGt32zSnFWTda7WOiJQ/o.jpg,
            https://s3-media3.fl.yelpcdn.com/bphoto/LnLGURjbUo0qftyvtqB67A/o.jpg',
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


Review.create(
  body: "I'm so happy the Potrero Hill location is open! I can get my
        Boba Guys fix on my lunch breaks. My go-to is the strawberry
        matcha tea, but I sometimes switch it up for the horchata. I'm
        definitely going to be hitting the gym more on my lunch breaks
        as well lol!",
  rating: 5,
  biz_id: 1,
  reviewer_name: 'Jess E.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407680/person18_ekhd3h.jpg'
)

Review.create(
  body: "This is one of the few spots in SF that sells the mochi muffins
        from Third Culture Bakery!! What are mochi muffins you ask?
        They are these super tasty hybrid muffins that have the texture
        of chewy mochi.

        I'm obsessed. I even forget to order a drink, I
        just have eyes for dem muffins. Going to get some green tea ones
        today.",
  rating: 5,
  biz_id: 1,
  reviewer_name: 'Steven N.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407679/person14_a6f6ir.jpg'
)

Review.create(
  body: "Overrated. What's with all these weirdly colorful and sugary
        boba tea spots these days. Where can I go to just get a simple
        black milk tea tapioca drink that's not $4?! PM me if you know
        of any in SF, because I sure don't.",
  rating: 3,
  biz_id: 1,
  reviewer_name: 'Hangry P.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506408529/person16_umehzg.jpg'
)

Review.create(
  body: "It's crazy how fast Boba Guys went from nothing to the most
         recognizable bubble tea shop in SF and NYC. Their drinks are pretty good,
         but I really think their strength is the branding and design.
         I find myself wanting to go just to get a snap for my IG. I mean,
         how can you resist such photogenic drinks?",
  rating: 4,
  biz_id: 1,
  reviewer_name: 'Stephanie L.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407679/person8_uvhueb.jpg'
)

Review.create(
  body: "I can't spell their name, but I can eat their ice cream!!",
  rating: 4,
  biz_id: 2,
  reviewer_name: 'Sandy B.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506408546/person7_c6usl0.jpg'
)

Review.create(
  body: "Randomly walked in here while I was killing time for brunch
         next door. Bad idea because I ended up getting full from three,
         yes THREE scoops of their addictively good ice cream. I couldn't
         help myself, it was that good! Totally worth canceling on my
         brunch friends...",
  rating: 4,
  biz_id: 2,
  reviewer_name: 'Alex T.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407678/person5_htq4yl.jpg'
)

Review.create(
  body: "Two words: WHISKEY ICE CREAM.",
  rating: 5,
  biz_id: 2,
  reviewer_name: 'Toto W.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506408277/person1_qyebwg.jpg'
)

Review.create(
  body: "I consider myself an ice cream connoisseur. So what do I think
         of Mr. and Mrs. Miscellaneous? Well weird name aside, this is
         in my top three ice cream spots in the city. I probably like
         Humphry Slocombe for the flavors, but this takes the cake for
         the perfectly creamy texture and high butterfat content.

         If it's your first time, ask for a sample of everything! Don't
         worry they are really nice about it. Don't miss the cookies
         either, they are just as good as the cold stuff.",
  rating: 5,
  biz_id: 2,
  reviewer_name: 'Aiden W.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407679/person12_oqc7ci.jpg'
)

Review.create(
  body: "Tin Pot was already the best thing in Palo Alto. That's right,
        not just the best ice cream, best dessert, best food, best
        grocery store, best park, or what have you...the best THING period.

        And then on my recent visit, I tried their cookies for the first
        time. woah.

        They were part of the custom ice cream sandwiches, which I
        hadn't noticed until my last visit. I guess I had blinders on
        for their ice cream cones these past couple years.

        Anyway, I must have had the biggest sugary carb craving that
        fateful day, because I zoomed in right on the ice cream cookie
        sign. This was what I needed. The helpful lady upped the ante,
        by telling me I could pick two different cookies. This was
        almost too much to handle.

        I chose the Black Magic (chocolate shortbread!) and Chocolate
        Chunk. Don't even get me started on the flecks of sea salt
        generously dotting the surfaces.

        The lady sandwiched a generous scoop of my favorite Earl Grey
        ice cream between the two. I proceed to go to heaven.
        Finally, an ice cream sandwich where the cookies are just as
        good as the ice cream.",
  rating: 5,
  biz_id: 3,
  reviewer_name: 'Adrienne L.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407680/person20_fmy1o9.jpg',
  review_photos: 'https://s3-media2.fl.yelpcdn.com/bphoto/kck1WGQ0nnw0Z6j3W9FtZQ/o.jpg,
                  https://s3-media3.fl.yelpcdn.com/bphoto/tSJopiYibNwIFMBZ6YRBQA/o.jpg,
                  https://s3-media1.fl.yelpcdn.com/bphoto/4D03Qystx4hu4dAXe_ozCg/o.jpg,
                  https://s3-media2.fl.yelpcdn.com/bphoto/v6dJWSGqMEIsE0DdV3Uy7A/o.jpg'
)

Review.create(
  body: "Tartine is the gold standard for sourdough bread. Once you try
        their bread, you'll understand why every serious baker has a
        copy of Chad Robertson's book. His bread is seriously life
        changing!

        My favorite is the sesame sourdough loaf - the dark, hard crust
        gives way to the softest, perfectly fluffy, moist center. Be
        careful, because this is a loaf you can devour in one sitting.
        I like to get a few types of cheese from Mission Cheese down the
        block and call it meal. SO good.",
  rating: 5,
  biz_id: 5,
  reviewer_name: 'Adrienne L.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407680/person20_fmy1o9.jpg'
)

Review.create(
  body: "This is a carb lover's heaven! Everything baked good you want
         can be found here - croissants, banana creme pie, scones,
         bread pudding, and of course the legendary morning bun.",
  rating: 5,
  biz_id: 5,
  reviewer_name: 'Andy H.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407679/person15_l9c3io.jpg'
)

Review.create(
  body: "Why is there always a line for the bread? Tartine would get 5
        stars except that the bread comes out at 4:30PM - is this a real
        bakery??? And the line wraps around the block.

        I don't like waiting. I'd rather go to Bi-rite nearby and grab
        whatever they have in stock.",
  rating: 4,
  biz_id: 5,
  reviewer_name: 'Drew M.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506408277/person1_qyebwg.jpg'
)

Review.create(
  body: "Mommy takes me to Tartine every Sunday morning. I love the
         raspberry tart!",
  rating: 5,
  biz_id: 5,
  reviewer_name: 'Jessie S.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506408160/person11_ubaciw.jpg'
)

Review.create(
  body: "Mommy takes me to Tartine every Sunday morning. I love the
         raspberry tart!",
  rating: 5,
  biz_id: 5,
  reviewer_name: 'Jessie S.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506408160/person11_ubaciw.jpg'
)
