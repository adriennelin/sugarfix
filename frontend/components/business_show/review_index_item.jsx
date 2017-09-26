import React from 'react';
import { Link } from 'react-router-dom';
import ratingToStars from '../../util/star_util';

class ReviewIndexItem extends React.Component {
  getReviewPhotos(){
    const reviewPhotos = this.props.review.review_photos;
    if (reviewPhotos) {
      return (
        reviewPhotos.split(',').map( (photo, idx) => (
          <li key={this.props.review.id + idx}
            className='review-photo'>
            <img src={photo} />
          </li>
        ))
      );
    } else {
      return <li></li>;
    }
  }

  render(){
    const review = this.props.review;

    return (
      <li className='review-index-item'>
        <div className='review-and-sidebar'>
          <div className='reviewer-sidebar'>
            <div className='reviewer-block'>
              <div className='avatar'>
                <img src={review.reviewer_img} />
              </div>
              <p>{review.reviewer_name}</p>
            </div>
          </div>
          <div className='review-content'>
            <div className='review-rating'>
              <img src={ratingToStars(review.rating)} />
            </div>
            <p>{this.props.review.body}</p>
            <ul className='review-photos'>
              {this.getReviewPhotos()}
            </ul>
          </div>
        </div>
      </li>
    );
  }
}

export default ReviewIndexItem;
