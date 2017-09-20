import React from 'react';
import {Link, withRouter} from 'react-router-dom';

class SessionForm extends React.Component{
  constructor(props){
    super(props);
    this.state = {username: "", password: ""};
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentWillReceiveProps(nextProps){
    if(nextProps.loggedIn) {
      this.props.history.push('/');
    }
  }

  update(field) {
    return(e) => this.setState({[field]:e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  navLink(){
    if(this.props.formType === 'login'){
      return <Link to='/signup'>Sign up</Link>;
    } else {
      return <Link to='/login'>Log in</Link>;
    }
  }

  loginGreeting(){
    if(this.props.formType === 'login'){
      return 'Log in to SugarFix';
    } else {
      return 'Get your SugarFix!';
    }
  }

  loginMessage(){
    if(this.props.formType === 'login'){
      return 'New to SugarFix?';
    } else {
      return 'Already on SugarFix?';
    }
  }

  renderErrors(){
    return (
      <ul>
        {this.props.errors.map((error, idx) => (
          <li key={`error-${idx}`}>{error}</li>
        ))}
      </ul>
    );
  }

  render(){
    return (
      <div className='session-form-container'>
        <form onSubmit={this.handleSubmit}>
          <h2>{this.loginGreeting()}</h2>
          <br/><br/>
          <p className='subheading'> {this.loginMessage()} </p> {this.navLink()}
          {this.renderErrors()}

          <div className='login-form'>
            <label>
              <input className='login-field' type='text' value={this.state.username}
                     placeholder='Username' onChange={this.update('username')} />
            </label>
            <br/>
            <label>
              <input className='login-field' type='password' value={this.state.password}
                     placeholder='Password' onChange={this.update('password')} />
            </label>
            <br/>
            <input type='submit' className='session-submit-button'
                   value={this.props.formType === 'login' ? 'Log In' : 'Sign Up'}/>
          </div>
        </form>
      </div>
    );
  }
}

export default withRouter(SessionForm);
