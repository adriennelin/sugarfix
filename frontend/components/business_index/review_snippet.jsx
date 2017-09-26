import React from 'react';
import { Link, withRouter } from 'react-router-dom';


const ReviewSnippet = ({review}) => {
  if (review === undefined) {
    return (<div></div>);
  }
  
  return (
    <div>
      {review.body}
    </div>
  );
};


export default ReviewSnippet;
