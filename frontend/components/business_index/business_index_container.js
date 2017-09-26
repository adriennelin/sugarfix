import { connect } from 'react-redux';
import { fetchBusinesses,
         fetchReviews
       } from '../../actions/business_actions';
import BusinessIndex from './business_index';

const mapStateToProps = ({entities}) => ({
  businesses: Object.values(entities.businesses),
  reviews: Object.values(entities.reviews)
});

const mapDispatchToProps = dispatch => ({
  fetchBusinesses: () => dispatch(fetchBusinesses()),
  fetchReviews: () => dispatch(fetchReviews())
});

export default connect(mapStateToProps, mapDispatchToProps)(BusinessIndex);
