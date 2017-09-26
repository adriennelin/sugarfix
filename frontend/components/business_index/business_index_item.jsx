import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import ratingToStars from '../../util/star_util';
import ReviewSnippet from './review_snippet';

const BusinessIndexItem = ({ business, idx, review }) => {
  console.log(review);
  return (
    <li className='biz-index-item-li'>
      <div className='search-result'>
        <div className='main-and-secondary-attr'>

          <div className='photo-and-main-attr'>
            <div className='media-flex'>

              <div className='biz-photo-div'>
                <img className='photo-box'
                  src={business.img_url.split(',')[0]}
                  alt={`${business.name} thumbnail`}/>

              </div>

              <div className='main-attr'>
                <span className='idx-biz-name'>
                  {idx}. <Link to={`/businesses/${business.id}`}>
                  {business.name}</Link>
              </span>

              <div className='stars-reviews'>
                <div className='stars'>
                  <img
                    src={ratingToStars(business.rating)}
                    alt={`${business.rating} star img`}/>
                </div>

                <span className='review-count'>

                </span>
              </div>


              <div className='price-category'>
                <span className='price'>
                  {business.cost}
                </span>

                <span className='bullet'>
                  •
                </span>

                <span className='category'>
                  {business.category}
                </span>
              </div>
            </div>
          </div>
        </div>

        <div className='secondary-attr'>
          <div className='neighborhood'>
            {business.neighborhood}
          </div>

          <address className='address'>
            {business.address.split(',')[0]}
            <br/>
            {business.address.split(',')[1]},
            {business.address.split(',')[2]}
          </address>

          <span className='phone'>
            {business.phone}
          </span>

        </div>
        </div>

        <div className='review-snippet'>
            <ReviewSnippet
              review={review} />
        </div>
      </div>
    </li>
  );
};

export default BusinessIndexItem;
