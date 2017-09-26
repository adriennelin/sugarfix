import React from 'react';
import { Link, withRouter } from 'react-router-dom';


class ReviewSnippet extends React.Component {

  trimReview(){
    const body = this.props.review.body;

    const length = body.length < 193 ? body.length : 193;

    const trimmedReview = body.length < 193 ? body.substring(0,length) :
                          body.substring(0,length) + ' ...';

    return trimmedReview;
  }

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
          <p>{this.trimReview()}</p>
        </div>

      </div>
    );
  }
}

export default ReviewSnippet;
