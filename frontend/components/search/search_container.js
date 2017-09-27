import { connect } from 'react-redux';
import { fetchBusinesses,
         fetchAllReviews
       } from '../../actions/business_actions';
import { updateFilter } from '../../actions/filter_actions';
import Search from './search';

const mapStateToProps = ({entities}) => ({
  businesses: Object.values(entities.businesses),
  reviews: Object.values(entities.reviews)
});

const mapDispatchToProps = dispatch => ({
  fetchBusinesses: () => dispatch(fetchBusinesses()),
  fetchAllReviews: () => dispatch(fetchAllReviews()),
  updateFilter: (filter, value) => dispatch(updateFilter(filter, value))
});

export default connect(mapStateToProps, mapDispatchToProps)(Search);
