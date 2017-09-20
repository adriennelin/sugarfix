import React from 'react';
import {Link} from 'react-router-dom';

const sessionLinks = () => (
  <div className='header-signup'>
    <Link to="/signup" className='header-signup-button'>Sign Up</Link>
  </div>
);

const welcomeMessage = (currentUser, logout) => (
  <div className='user-button'>
    <h3>Welcome, {currentUser.username}!</h3>
    <button onClick={logout}>Logout</button>
  </div>
);

const UserButton = ({currentUser, logout}) => (
  currentUser ? welcomeMessage(currentUser, logout) : sessionLinks()
);

export default UserButton;
