import React from 'react';
import {Link} from 'react-router-dom';

const signupLink = () => (
  <div className='header-signup'>
    <Link to="/signup" className='header-signup-button'>Sign Up</Link>
  </div>
);

const welcomeMessage = (currentUser, logout) => (
  <div className='logged-in-message'>
    <h3>Welcome, {currentUser.username}!</h3>
    <button className='logout-button' onClick={logout}>Log Out</button>
  </div>
);

const HeaderBar = ({currentUser, logout}) => (
  <div className='header-bar'>
    <img src='http://res.cloudinary.com/adrienne/image/upload/v1505933816/logo-white_blfc6f.png'
         className='logo' alt='sugarfix logo'></img>
    {currentUser ? welcomeMessage(currentUser, logout) : signupLink()}
  </div>
);

export default HeaderBar;
