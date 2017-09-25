import merge from 'lodash/merge';
import {
  RECEIVE_REVIEW
} from '../actions/review_actions';

const ReviewsReducer = (state = {}, action) => {
  Object.freeze(state);
  let newState = merge({}, state);

  switch (action.type) {
    case RECEIVE_REVIEW:
      const review = action.review;
      newState[review.biz_id].reviews.push(review);
      return newState;
    default:
      return state;
  }
};

export default ReviewsReducer;
