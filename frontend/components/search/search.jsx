import React from 'react';
import BusinessIndex from '../business_index/business_index';
import Map from '../map/map';

const Search = ({ businesses,
                  reviews,
                  fetchBusinesses,
                  fetchAllReviews }) => (
  <div>
    <div className='column column-left'>
      <BusinessIndex businesses={businesses}
                     reviews={reviews}
                     fetchBusinesses={fetchBusinesses}
                     fetchAllReviews={fetchAllReviews}/>
    </div>
    <div className='column column-right'>
      <Map
        businesses={businesses}
      />
    </div>
  </div>
);

export default Search;
