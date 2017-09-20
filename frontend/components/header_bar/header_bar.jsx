import React from 'react';
import {Link} from 'react-router-dom';


class HeaderBar extends React.Component{
  constructor(props){
    super(props);
  }

  componentWillReceiveProps(newProps) {
    this.setState(newProps.post);
  }

  signupLink(){
    return (
      <div className='header-signup'>
        <Link to="/signup" className='header-signup-button'>Sign Up</Link>
      </div>
    );
  }

  welcomeMessage(currentUser, logout){
    return (
    <div className='logged-in-message'>
      <h3>Welcome, {currentUser.username}!</h3>
      <button className='logout-button' onClick={logout}>Log Out</button>
    </div>
    );
  }

  render(){
    return (
      <div className='header-bar'>
        <img src='http://res.cloudinary.com/adrienne/image/upload/v1505933816/logo-white_blfc6f.png'
             className='logo' alt='sugarfix logo'></img>
           {this.props.currentUser ?
             this.welcomeMessage(this.props.currentUser, this.props.logout)
                  : this.signupLink()}
      </div>
    );
  }
}

export default HeaderBar;
