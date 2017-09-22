const ratingToStars = (rating) => {
  switch (rating) {
    case 5:
      return 'https://res.cloudinary.com/adrienne/image/upload/v1506031516/five_stars_jq9umd.png';
    case 4.5:
      return 'https://res.cloudinary.com/adrienne/image/upload/v1506031516/four_half_stars_b1tnvr.png';
    case 4:
      return 'https://res.cloudinary.com/adrienne/image/upload/v1506031516/four_stars_ljplee.png';
    case 3.5:
      return 'https://res.cloudinary.com/adrienne/image/upload/v1506031516/three_half_stars_kmvd3z.png';
    case 3:
      return 'https://res.cloudinary.com/adrienne/image/upload/v1506031516/three_stars_veabbc.png';
    case 2.5:
      return 'https://res.cloudinary.com/adrienne/image/upload/v1506031516/two_half_stars_hgv2dy.png';
    case 2:
      return 'https://res.cloudinary.com/adrienne/image/upload/v1506031516/two_stars_fjai1t.png';
    case 1.5:
      return 'https://res.cloudinary.com/adrienne/image/upload/v1506031516/one_half_stars_ie51mi.png';
    case 1:
      return 'https://res.cloudinary.com/adrienne/image/upload/v1506031516/one_stars_cosvdf.png';
    case 0:
      return 'https://res.cloudinary.com/adrienne/image/upload/v1506031516/zero_stars_nutj3u.png';
    default:
      return null;
  }
};

export default ratingToStars;
