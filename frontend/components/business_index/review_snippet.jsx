import React from 'react';
import { Link, withRouter } from 'react-router-dom';


const ReviewSnippet = review => {
  return (
    <div>
      {review.body}
    </div>
  );
};


export default ReviewSnippet;
