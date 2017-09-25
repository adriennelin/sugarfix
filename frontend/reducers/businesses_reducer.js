import merge from 'lodash/merge';
import {
  RECEIVE_BUSINESSES,
  RECEIVE_BUSINESS,
  RECEIVE_REVIEW
} from '../actions/business_actions';

const BusinessesReducer = (state = {}, action) => {
  Object.freeze(state);
  let newState = merge({}, state);

  switch (action.type) {
    case RECEIVE_BUSINESSES:
      return merge({}, state, action.businesses);
    case RECEIVE_BUSINESS:
      return merge({}, state, {[action.business.id]: action.business});
    case RECEIVE_REVIEW:
      const review = action.review;
      newState[review.biz_id].reviews.push(review);
      return newState;
    default:
      return state;
  }
};

export default BusinessesReducer;
