import { connect } from 'react-redux';
import { fetchBusiness, fetchReviews } from '../../actions/business_actions';
import { createReview } from '../../actions/business_actions';
import ReviewForm from './review_form';

const mapStateToProps = ({errors, entities}, {match}) => {
  // debugger;
  return ({
  // review: entities.review[match.params.reviewId],
  business: entities.businesses[match.params.businessId],
  reviews: Object.values(entities.reviews)
  // errors: errors.reviews
});};

const mapDispatchToProps = dispatch => ({
  createReview: review => dispatch(createReview(review)),
  fetchBusiness: id => dispatch(fetchBusiness(id)),
  fetchReviews: bizId => dispatch(fetchReviews(bizId))
  // receiveErrors: () => dispatch(receiveErrors([]))
  });

export default connect(mapStateToProps, mapDispatchToProps)(ReviewForm);
