import React from 'react';
import { Link } from 'react-router-dom';
import ratingToStars from '../../util/star_util';

class PreviousReviewItem extends React.Component {
  render(){
    const review = this.props.review;

    return (
      <li className='previous-reviews review-index-item'>
        <div className='avatar'>
          <img src={review.reviewer_img} />
          <p className='reviewer-name'>{review.reviewer_name}</p>
        </div>


          <div className='review-content'>
            <div className='review-rating'>
              <img src={ratingToStars(review.rating)} />
            </div>
            <p className='prev-review-body'>
              {this.props.review.body}</p>
          </div>
      </li>
    );
  }
}

export default PreviousReviewItem;
