# Yelp Routes

## Frontend Routes
+ `/login`
+ `/signup`
+ `/city` - browse businesses by city, map
+ `/biz/:bizName` - business page (details & review index)
+ `/reviews/new`- create new review
+ `/user/:userId` - user profile (bonus MVP)

## API Endpoints
### `businesses`
+ `GET /api/biz` - returns businesses by search filters
+ `POST /api/biz` - create new business

### `reviews`
+ `GET /api/reviews`
+ `POST /api/reviews` - create new review
+ `PATCH /api/reviews/:reviewID` - edit review
+ `DELETE /api/reviews/:reviewID` - delete review
