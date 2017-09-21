import { connect } from 'react-redux';
import { fetchBusinesses } from '../../actions/business_actions';
import BusinessIndex from './business_index';

const mapStateToProps = ({entities}) => ({
  businesses: Object.keys(entities.businesses)
                    .map(id => entities.businesses[id])
});

const mapDispatchToProps = dispatch => ({
  fetchBusinesses: () => dispatch(fetchBusinesses())
});

export default connect(mapStateToProps, mapDispatchToProps)(BusinessIndex);
