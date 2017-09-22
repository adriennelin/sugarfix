import { connect } from 'react-redux';
import { login, logout, signup, receiveErrors } from '../../actions/session_actions';
import SessionForm from './session_form';

const mapStateToProps = (state) => ({
  loggedIn: Boolean(state.session.currentUser),
  errors: state.errors.session
});

const mapDispatchToProps = (dispatch, { location }) => {
  const formType = (location.pathname.slice(1));
  const processForm = formType === 'login' ? login : signup;

  return {
    formType,
    processForm: user => dispatch(processForm(user)),
    login: user => dispatch(login(user)),
    receiveErrors: () => dispatch(receiveErrors([]))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);
