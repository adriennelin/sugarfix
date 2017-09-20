import React from 'react';
import {Link} from 'react-router-dom';

const NavBar = () => (
  <div>
    <Link to="/login" className='nav-login-button'>Log In</Link>
  </div>
);

export default NavBar;
