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

User.create(username: 'guest', password: '123456')

Business.create(
  name: 'Boba Guys - Potrero Hill',
  img_url: 'https://s3-media4.fl.yelpcdn.com/bphoto/FrcxSuTVhXQq8puPUkBx-Q/o.jpg,
            https://s3-media3.fl.yelpcdn.com/bphoto/lnLoF9kIWf1K8BwB7pevtQ/o.jpg,
            https://s3-media1.fl.yelpcdn.com/bphoto/STfx_WxldlqgncroxEI0yA/o.jpg',
  address: '1002 16th St, San Francisco, CA 94107',
  cross_streets: 'Connecticut St & Daggett St',
  neighborhood: 'Potrero Hill',
  lat: 37.766481,
  lng: -122.397142,
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
  lng: -122.388116,
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
  lng: -122.158960,
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
  lng: -122.423629,
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
  img_url: 'https://res.cloudinary.com/adrienne/image/upload/v1506663443/tartine_bread.jpg,
            https://s3-media2.fl.yelpcdn.com/bphoto/Yg2yB2gOZDuiWuek_q1zYA/o.jpg,
            https://s3-media1.fl.yelpcdn.com/bphoto/gxMtWzJnldz2_8iTdT5oSA/o.jpg',
  address: '600 Guerrero St, San Francisco, CA 94110',
  neighborhood: 'Mission',
  lat: 37.761400,
  lng: -122.424109,
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
  lng: -122.440714,
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
  lng: -122.420475,
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
  lng: -122.459264,
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
  lng: -122.401318,
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
  lng: -122.117033,
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
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407680/person18_ekhd3h.jpg',
  review_photos: 'https://s3-media2.fl.yelpcdn.com/bphoto/oX66vFSIyMRQhDWjl05EBA/o.jpg'
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
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407679/person14_a6f6ir.jpg',
  review_photos: 'https://s3-media4.fl.yelpcdn.com/bphoto/pAoIn9QrIZ9tU7pz8-8DWg/o.jpg'
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
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407679/person8_uvhueb.jpg',
  review_photos: 'https://s3-media1.fl.yelpcdn.com/bphoto/Ikp9KwKDMk2rEkhTXPtKoA/o.jpg,
                  https://s3-media2.fl.yelpcdn.com/bphoto/8AmlI8Q_T-e0c2uaEI2itQ/o.jpg'

)

Review.create(
  body: "I can't spell their name, but I can eat their ice cream! I love
        the extra smooth texture here. Never lets me down.",
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
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407678/person5_htq4yl.jpg',
  review_photos: 'https://s3-media2.fl.yelpcdn.com/bphoto/wPCh-Ho33qGqU7-vXhHz1w/o.jpg'
)

Review.create(
  body: "Two words: WHISKEY ICE CREAM.",
  rating: 5,
  biz_id: 2,
  reviewer_name: 'Toto W.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506408277/person1_qyebwg.jpg',
  review_photos: 'https://s3-media1.fl.yelpcdn.com/bphoto/UEtTcuWl6mMKArY5fODiAA/o.jpg'
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
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407679/person12_oqc7ci.jpg',
  review_photos: 'https://s3-media1.fl.yelpcdn.com/bphoto/W_iVkhuyalu5b5SnGb2Kkw/o.jpg,
                 https://s3-media1.fl.yelpcdn.com/bphoto/I_P4tqn0DrYdZeDxAFhucQ/o.jpg'
)

Review.create(
  body: "Everything is awesome!! Well, the roasted banana fudge ripple
  was just okay. But everything else is awesome!! Earl grey, four
  barrel coffee, vanilla bean, salted butterscotch, purple sweet
  potato cinnamallow, the sorbets..aack definitely a no-diet zone.",
  rating: 4,
  biz_id: 3,
  reviewer_name: 'Acorn L.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407678/person6_lj9ok1.jpg',
  review_photos: 'https://s3-media2.fl.yelpcdn.com/bphoto/v6dJWSGqMEIsE0DdV3Uy7A/o.jpg'
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
                  https://s3-media1.fl.yelpcdn.com/bphoto/4D03Qystx4hu4dAXe_ozCg/o.jpg'
)

Review.create(
  body: "Forget the ice cream, I'm obsessed with the cookies here!!!
         I love the corn cookie - it actually tastes like corn, but in
         the best way possible. The black magic cookies are also amazing.",
  rating: 5,
  biz_id: 3,
  reviewer_name: 'Jess R.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407678/person4_ffrwoo.jpg',
  review_photos: 'https://s3-media3.fl.yelpcdn.com/bphoto/tSJopiYibNwIFMBZ6YRBQA/o.jpg'
)


Review.create(
  body: "My first food memories are eating macarons at Chantal Guillon.
        I quickly developed a taste for these pricey pastries. My parents
        probably regret taking me so young. Now I demand at least one
        macaron every day!",
  rating: 4,
  biz_id: 4,
  reviewer_name: 'Justin S.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407679/person10_lqu0sm.jpg',
  review_photos: 'https://s3-media1.fl.yelpcdn.com/bphoto/MGhBZ6EHb53jkONxLor4nw/o.jpg'
)

Review.create(
  body: "I haven't actually tried the macarons. I'm just reviewing to
        get yelp elite.",
  rating: 3,
  biz_id: 4,
  reviewer_name: 'Totoro Q.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407678/person3_jjynkb.jpg'
)

Review.create(
  body: "Laduree, you got some serious competition. SF has its own
        macaron shop to rival the French domination. The flavors here are all
        excellent. I especially love the rose and lavender - what can I
        say, I love floral.",
  rating: 5,
  biz_id: 4,
  reviewer_name: 'Aisha C.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407678/person2_rdzdzw.jpg',
  review_photos: 'https://s3-media4.fl.yelpcdn.com/bphoto/lHc7oWt160i1tOAK9GWFBA/o.jpg,
                  https://s3-media1.fl.yelpcdn.com/bphoto/8vLCZZZxxOG7Ik6inr3TLw/o.jpg'
)

Review.create(
  body: "Geez I suck at baking. Everytime I try to make french macarons,
        I get these puddles of flat disks. I guess I shouldn't feel that
        bad because macarons are some of the more difficult things to bake.
        This makes me appreciate living so close to Chantal Guillon. I can
        get my macaron fix here instead.",
  rating: 4,
  biz_id: 4,
  reviewer_name: 'Tiffany H.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407679/person13_hryr9q.jpg'
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
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407680/person20_fmy1o9.jpg',
  review_photos: 'https://s3-media1.fl.yelpcdn.com/bphoto/y_IVO6eVrQ_L-yPcmN-UYQ/o.jpg'
)

Review.create(
  body: "This is a carb lover's heaven! Everything baked good you want
         can be found here - croissants, banana creme pie, scones,
         bread pudding, and of course the legendary morning bun.",
  rating: 5,
  biz_id: 5,
  reviewer_name: 'Andy H.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407679/person15_l9c3io.jpg',
  review_photos: 'https://s3-media1.fl.yelpcdn.com/bphoto/y_IVO6eVrQ_L-yPcmN-UYQ/o.jpg'
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
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506408160/person11_ubaciw.jpg',
  review_photos: 'https://s3-media1.fl.yelpcdn.com/bphoto/gxMtWzJnldz2_8iTdT5oSA/o.jpg'
)

Review.create(
  body: "I am yelp elite yelp? I hope this review takes me there.",
  rating: 3,
  biz_id: 6,
  reviewer_name: 'Totoro Q.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407678/person3_jjynkb.jpg'
)

Review.create(
  body: "B. Patisserie put the kouign amann on the map for the west coast.
        Their flaky, sugary pastry is my favorite weekly indulgence.
        If you like croissants, you will love their version of the kouign
        amann. It's airy like a croissant, but with with sugar between
        each layer. So good!",
  rating: 5,
  biz_id: 6,
  reviewer_name: 'Wilson M.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407679/person17_yefljl.jpg',
  review_photos: 'https://s3-media4.fl.yelpcdn.com/bphoto/NMbIGeIjLUjNTuWJ3sdOVQ/o.jpg'
)

Review.create(
  body: "This is one of my favorite bakeries in town. They are known for
        the kouign amann nature, but they do so many other variations as
        well! The chocolate is my favorite and they have pumpkin when it's
        that time of the year.",
  rating: 4,
  biz_id: 6,
  reviewer_name: 'Jenny Y.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407678/person5_htq4yl.jpg',
  review_photos: 'https://s3-media3.fl.yelpcdn.com/bphoto/btOw0WIH3Zw49BEvC8QD4A/o.jpg,
                  https://s3-media4.fl.yelpcdn.com/bphoto/0E24Lrda07b1wq3jgU_Cng/o.jpg'
)

Review.create(
  body: "Forget about this kouign amann business, I won't eat anything
        I can't pronouce. Instead, I'm here for the good ol' chocolate chip
        cookie.",
  rating: 4,
  biz_id: 6,
  reviewer_name: 'Jeffrey G.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506408277/person1_qyebwg.jpg',
  review_photos: ''
)

Review.create(
  body: "Check out their churro cones, only available on Saturday afternoons.
        The warm churro makes the ice cream melt faster, but that's not
        a problem because I devour it in seconds. Extra bonus points for holding
        a larger scoop of ice cream over your standard waffle cone.",
  rating: 4,
  biz_id: 7,
  reviewer_name: 'Joy M.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506408160/person11_ubaciw.jpg',
  review_photos: 'https://s3-media4.fl.yelpcdn.com/bphoto/B3bLo5PqvSV8SYVwmTRjtg/o.jpg,
                 https://s3-media1.fl.yelpcdn.com/bphoto/oU2cmIZnsuxuFKcHV9hUXA/o.jpg'
)

Review.create(
  body: "I probably sampled all their flavors (they were really nice about
        samples), but I honestly couldn't find anything that called out
        to me. Everything tasted a bit dull, I'm not sure what the other
        reviewers find good about this spot. I guess the uniqueness of
        flavors offered? But what's the point, if it doesn't taste great.",
  rating: 2,
  biz_id: 7,
  reviewer_name: 'Tim M.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407678/person9_ldyyeh.jpg',
  review_photos: 'https://s3-media4.fl.yelpcdn.com/bphoto/1tIUzCeE4rGO9yVKJBEkbQ/o.jpg'
)

Review.create(
  body: "Omg the matcha gold flavor is my jam!! It's matcha green tea with
        bits of toffee. I'm also a fan of the thai tea and black sesame
        flavors. Love how unique these are!",
  rating: 5,
  biz_id: 7,
  reviewer_name: 'Amy Z.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407679/person8_uvhueb.jpg',
  review_photos: 'https://s3-media3.fl.yelpcdn.com/bphoto/p4jjKiWadPDe9yKF1MF1Og/o.jpg'
)

Review.create(
  body: "With all the creameries in SF, Garden Creamery does stand out
        because of the variety of asian flavors. While those are fun,
        they also do the traditional flavors well. A solid addition to the
        ice cream scene.",
  rating: 4,
  biz_id: 7,
  reviewer_name: 'Kewpie L.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506408546/person7_c6usl0.jpg'
)

Review.create(
  body: "Even before Bon Appetit named them best new bakery in America, I
        was a big fan of their croissants. They are life changing!",
  rating: 5,
  biz_id: 8,
  reviewer_name: 'Ben A.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407679/person15_l9c3io.jpg',
  review_photos: 'https://s3-media2.fl.yelpcdn.com/bphoto/2iAFGY2bfokTu1nYtiJz1A/o.jpg,
                  https://s3-media2.fl.yelpcdn.com/bphoto/9V8mD7Gan7dDYgouaD6Wmw/o.jpg,
                  https://s3-media1.fl.yelpcdn.com/bphoto/oXsuSJcxLCifMxFlcVREHQ/o.jpg'
)

Review.create(
  body: "This is the best I've had in the US, so it's pretty good, but
        it pales in comparison to a proper French croissant. I can't
        put my finger on what's missing. Maybe all the effortlessly put
        together Parisians.",
  rating: 3,
  biz_id: 8,
  reviewer_name: 'Ellie G.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407678/person2_rdzdzw.jpg'
)

Review.create(
  body: "Omg the lines here have finally died down a bit. Thanks Bon Appetit
        for making a monster this past year. My favorite neighborhood bakery was all of
        a sudden swarmed, and I could no longer grab a bite without a
        one hour wait. Now they have lifted the restriction on how much
        you can buy, and I'm able to get in and out within 15 minutes.
        Whew.",
  rating: 5,
  biz_id: 8,
  reviewer_name: 'Ryan M.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407679/person14_a6f6ir.jpg',
  review_photos: 'https://s3-media3.fl.yelpcdn.com/bphoto/SmlcqgkJj0_cgv11LANYQw/o.jpg'
)

Review.create(
  body: "Milkbomb definitely fills a void in this style of ice cream shops.
        Baked Bear is probably the closest, and I thought Milkbomb was better
        in every aspect.

        Not quite five stars, because the service while nice, was very
        slow and could be more engaging. The prices were also on the
        higher side, even for SF.

        I can't wait to go back and try the other waffle cone flavors!",
  rating: 4,
  biz_id: 9,
  reviewer_name: 'Shane C.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407678/person9_ldyyeh.jpg',
  review_photos: 'https://s3-media4.fl.yelpcdn.com/bphoto/JhmUwHUB77xR2xQ8hBi3Rg/o.jpg'
)

Review.create(
  body: "I was honestly expecting Milkbomb to be all looks, but I was
        pleasantly surprised at how much I enjoyed the desserts here.

        I tried the green tea, ginger, and ube ice cream and liked them
        all. The ginger ice cream had chunks of candied ginger - so good!

        I also tried the fruity cereal waffle cup and loved it maybe
        more than the ice cream. The waffle cup tasted just like fruity
        pebbles! It was thicker than most other waffle cones, which I
        appreciated as well.",

  rating: 4,
  biz_id: 9,
  reviewer_name: 'Adrienne L.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407680/person20_fmy1o9.jpg',
  review_photos: 'https://s3-media1.fl.yelpcdn.com/bphoto/rG-rOhtTZIkV2cDl1wFHVQ/o.jpg,
                  https://s3-media4.fl.yelpcdn.com/bphoto/h6r00YD0Ga99pNDwkZSSzg/o.jpg'
)


Review.create(
  body: "I doubled up on the ube here by having the ice cream in an ube crumble donut.
        Though I couldn't taste much ube flavor in the crumble, the donut
        itself was solid and served warm. The downside was that it melted
        the ice cream fast.",
  rating: 5,
  biz_id: 9,
  reviewer_name: 'Jonathan O.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407679/person10_lqu0sm.jpg'
)

Review.create(
  body: "The toppings here are lots of fun, as well as the sauces. The green
        tea sauce was my favorite - it was thick like caramel with strong
        matcha flavor. The rainbow mochi wasn't as good as other mochi
        I've had, but I enjoyed it nonetheless. Sadly the ice cream didn't
        match the toppings for me.",
  rating: 3,
  biz_id: 9,
  reviewer_name: 'Chippy R.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407678/person6_lj9ok1.jpg',
  review_photos: 'https://s3-media1.fl.yelpcdn.com/bphoto/reHD0k3eSTpNZAOzseVJMQ/o.jpg'
)


Review.create(
  body: "Best kougin amann ever. Enough said",
  rating: 5,
  biz_id: 10,
  reviewer_name: 'Piggy K.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506408529/person16_umehzg.jpg',
  review_photos: 'https://s3-media2.fl.yelpcdn.com/bphoto/KSc0pLkalhdxaqnky-SKWw/o.jpg'
)

Review.create(
  body: "Ever since Dominique Ansel took my Kouign Amann (KA) virginity,
  I have longed over this legendary pastry best described as a croissant
  on crack. Alas, it was a five hour flight away, so I went many years
  without satisfaction. Then last summer, my life changed for the better
  when I stumbled upon a local version that was more buttery and caramelized
  than the one of my distant memories. Yes, I'm talking about Manresa Bread's Kouign Amann!

  Manresa's version is harder on the outside, with an amazingly moist,
  soft, and buttery center. I've had a chance to try other local KAs
  now, and I still prefer Manresa Bread's. The consistency can be off
  sometimes, but when they get it right, it's heavenly! B Patisserie,
  Starter Bakery, and Dominique Ansel all have a lighter style that
  leaves me wanting the buttery decadence of Manresa Bread's KA.",
  rating: 5,
  biz_id: 10,
  reviewer_name: 'Adrienne L.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407680/person20_fmy1o9.jpg',
  review_photos: 'https://s3-media4.fl.yelpcdn.com/bphoto/dua3TIDexSJhaUAe1cMNTQ/o.jpg,
                  https://s3-media2.fl.yelpcdn.com/bphoto/YmiXR9U9djpGyJIOoLgkxQ/o.jpg'
)

Review.create(
  body: "They make wonderful pastries, but let's not forget about the bread!
  The loaves here are among the best I've tried. I even took a couple
  (Levain and Fruit & Nut) with me on the plane for my parents and
  future in-laws to try on the East Coast. Brownie points!",
  rating: 4,
  biz_id: 10,
  reviewer_name: 'Jane A.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407679/person13_hryr9q.jpg',
  review_photos: 'https://s3-media3.fl.yelpcdn.com/bphoto/amCpGt32zSnFWTda7WOiJQ/o.jpg'
)

Review.create(
  body: "They have my favorite stand at the Sunday Cal Ave farmer's market.
        My owner always makes sure to stop and buy some goodies for me.
        What a lucky pup I am.",
  rating: 5,
  biz_id: 10,
  reviewer_name: 'Cutie P.',
  reviewer_img: 'https://res.cloudinary.com/adrienne/image/upload/v1506407678/person3_jjynkb.jpg',
  review_photos: 'https://s3-media4.fl.yelpcdn.com/bphoto/7-P2yV5ahWQPsg_UYH8EXA/o.jpg'
)
