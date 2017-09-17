# Full Stack Project - Yelp

## State Shape Outline
+ `Entities`
  + `Businesses`
  + `Users`
  + `test`
  + `Reviews`
  + `Photos`
+ `UI`
+ `Errors`
+ `Session`

## Yelp Sample State

```js
{
  entities: {
    businesses: {
      1: {
        id: 1,
        name: "Boba Guys",
        address: "1002 16th St, San Francisco, CA 94107",
        phone: "(415) 967-2622",
        url: "bobaguys.com",
        hours: ?
        cost: "$"
      },
      2: {
        id: 2,
        name: "Mr. and Mrs. Miscellaneous",
        address: "699 22nd St, San Francisco, CA 94107",
        phone: "(415) 970-0750",
        url: ,
        hours: ?
        cost: "$"
      },
    },
    users: {
      7: {
        id: 7,
        first_name: "Adrienne",
        last_initial: "L.",
        email: "adrienne@gmail.com"
        current_city: "San Francisco"
      }
      8: {
        id: 8
        first_name: "Jerry",
        last_initial: "L.",
        email: "jerry@gmail.com"
        current_city: "San Francisco"
      },
    }
    reviews: {
      15: {
        id: 15,
        body: "Best ice cream in the city!",
        rating: 5,
        business_id: 2,
        reviewer_id: 7
      }
      18: {
        id: 18,
        body: "I'm addicted to their strawberry matcha latte.",
        rating: 4,
        business_id: 1,
        reviewer_id: 8  
      },
    }
    photos: {
      22: {
        id: 22,
        img_url: "https://s3-media1.fl.yelpcdn.com/bphoto/UEtTcuWl6mMKArY5fODiAA/o.jpg"
        img_caption: "A generous single scoop of Cooper Fox (single malt cherrywood whiskey) on a waffle cone."
        business_id: 2,
        user_id: 1
      }
      25: {
        id: 25,
        img_url: "https://s3-media4.fl.yelpcdn.com/bphoto/FrcxSuTVhXQq8puPUkBx-Q/o.jpg"
        img_caption: "Strawberry Matcha Latte, Matchella, and Vanilla Rum & Matcha Custard Cakes"
        business_id: 1,
        user_id: 1
      }
    }
  },
  ui: {
    loading: true/false
  },
  errors: {
    login: ["Incorrect email or password"],
    signup: [?]
  },
  session: {
    id: 10,
    email: "justin@gmail.com"
  }
}
```
