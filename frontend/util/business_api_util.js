export const fetchBusinesses = () => (
  $.ajax({
    method: 'GET',
    url: 'api/businesses',
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
    bizId
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
