import React from 'react';
import {Link, withRouter} from 'react-router-dom';

class SessionForm extends React.Component{
  constructor(props){
    super(props);
    this.state = {username: "", password: ""};
    this.handleSubmit = this.handleSubmit.bind(this);
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
      return <Link to='/signup'
                   onClick={this.props.receiveErrors}>Sign up</Link>;
    } else {
      return <Link to='/login'
                   onClick={this.props.receiveErrors}>Log in</Link>;
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
          <li key={`error-${idx}`}>{error}</li>
        ))}
      </ul>
    );
  }

  demoLogin(){
    return (e) => {
      e.preventDefault();
      this.props.login({username:'guest', password:'123456'});
    };
  }

  render(){
    return (
      <div className='session-form-container'>
        <form className='session-form' onSubmit={this.handleSubmit}>
          <h2 className='group'>{this.loginGreeting()}</h2>
          <div className='session-subheading'>
            <span className='subheading'>{this.loginMessage()} </span>
            <span className='session-form-toggle-link'>{this.navLink()}</span>
          </div>
          {this.renderErrors()}

          <div className='session-form-inputs'>
              <input className='login-field' type='text' value={this.state.username}
                     placeholder='Username' onChange={this.update('username')} />
            <br/>
              <input className='login-field' type='password' value={this.state.password}
                     placeholder='Password' onChange={this.update('password')} />
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
