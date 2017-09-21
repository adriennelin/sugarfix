import React from 'react';
import { Link } from 'react-router-dom';

const NavBar = ({currentUser}) => (
  <div className='nav-bar'>
    { currentUser ? "" :
      <Link to="/login" className='nav-login-button'>Log In</Link>
    }
  </div>
);

export default NavBar;
