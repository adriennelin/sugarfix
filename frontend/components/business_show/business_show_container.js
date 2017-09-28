import { connect } from 'react-redux';
import { fetchBusiness, fetchReviews } from '../../actions/business_actions';
import { updateFilter } from '../../actions/filter_actions';
import BusinessShow from './business_show';

const mapStateToProps = ({entities}, { match }) => ({
  business: entities.businesses[match.params.businessId],
  reviews: Object.values(entities.reviews)
});

const mapDispatchToProps = dispatch => ({
  fetchBusiness: id => dispatch(fetchBusiness(id)),
  fetchReviews: bizId => dispatch(fetchReviews(bizId)),
  updateFilter: (filter, value) => dispatch(updateFilter(filter, value))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(BusinessShow);
