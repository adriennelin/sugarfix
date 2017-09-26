import React from 'react';
import { Link } from 'react-router-dom';


class ReviewIndexItem extends React.Component {

  render(){
    return (
      <li className='review-index-item'>
        {this.props.review.body}
      </li>
    );
  }
}

export default ReviewIndexItem;
