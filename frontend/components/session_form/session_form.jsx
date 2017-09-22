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
      <ul className='errors-ul'>
        {this.props.errors.map((error, idx) => (
          <li className='errors-li'
              key={`error-${idx}`}>{error}</li>
        ))}
      </ul>
    );
  }

  demoLogin(){
    return (e) => {
      e.preventDefault();
      this.props.login({username:'guest user', password:'123456'});
    };
  }

  render(){
    return (
      <div className='session-form-container group'>
        <form className='session-form group' onSubmit={this.handleSubmit}>
          <h2 className='group'>{this.loginGreeting()}</h2>
          <div>
            <p className='subheading group'>{this.loginMessage()} </p>
            <p className='session-form-toggle-link group'>{this.navLink()}</p>
          </div>
          {this.renderErrors()}

          <div className='session-form-inputs'>
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
            <button className='demo-login'
                    onClick={this.demoLogin()}>Demo Login</button>
          </div>

        </form>
      </div>
    );
  }
}

export default withRouter(SessionForm);
