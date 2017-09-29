import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import { omnisearch } from '../../actions/filter_actions';

import HeaderBar from './header_bar';

const mapStateToProps = ({session}) => ({
  currentUser: session.currentUser
});

const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout()),
  omnisearch: query => dispatch(omnisearch(query))
});

export default connect(mapStateToProps, mapDispatchToProps)(HeaderBar);
