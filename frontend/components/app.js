import React from 'react';
import HeaderBar from './header_bar/header_bar_container';
import NavBar from './nav_bar/nav_bar_container';
import SessionFormContainer from './session_form/session_form_container';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
  <div>
    <header>
      <div className='header-wrapper'>

        <div className='header-bar'>
          <h1>SugarFix</h1>
          <HeaderBar />
        </div>
      </div>

      <div className='header-nav-wrapper'>
        <div className='nav-bar'>
          <NavBar />
        </div>
      </div>

    </header>

    <AuthRoute path="/login" component={SessionFormContainer} />
    <AuthRoute path="/signup" component={SessionFormContainer} />
  </div>
);

export default App;
