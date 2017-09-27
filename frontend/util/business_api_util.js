export const fetchBusinesses = bounds => (
  $.ajax({
    method: 'GET',
    url: 'api/businesses',
    data: bounds,
    error: (err) => console.log(err)
  })
);

export const fetchBusiness = id => (
  $.ajax({
    method: 'GET',
    url: `api/businesses/${id}`
  })
);

export const fetchReviews = bizId => (
  $.ajax({
    method: 'GET',
    url: 'api/reviews',
    data: {bizId}
  })
);

export const fetchAllReviews = () => (
  $.ajax({
    method: 'GET',
    url: 'api/reviews'
  })
);

export const createReview = data => (
  $.ajax({
    method: 'POST',
    url: 'api/reviews',
    data
  })
);
