import React from 'react';
import { Link, withRouter } from 'react-router-dom';


class ReviewSnippet extends React.Component {
  render(){
    const review = this.props.review;

    if (review === undefined) {
      return (<div></div>);
    }

    return (
      <div className='review-snippet'>
        <div className='snippet-avatar'>
          <img src={review.reviewer_img}/>
        </div>
        <div className='snippet-body'>
          <p>{this.props.review.body}</p>
        </div>

      </div>
    );
  }
}

export default ReviewSnippet;
