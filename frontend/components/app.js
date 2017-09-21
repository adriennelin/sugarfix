import React from 'react';
import HeaderBar from './header_bar/header_bar_container';
import NavBar from './nav_bar/nav_bar_container';
import SessionFormContainer from './session_form/session_form_container';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import BusinessIndexContainer from './business_index/business_index_container';

const App = () => (
  <div>
    <header>
      <div className='header-wrapper'>
        <HeaderBar />
      </div>

      <div className='header-nav-wrapper'>
        <NavBar />
      </div>

    </header>

    <main>
      <div className='main-wrapper group'>
      <AuthRoute path="/login" component={SessionFormContainer} />
      <AuthRoute path="/signup" component={SessionFormContainer} />
      <Route exact path="/" component={ BusinessIndexContainer } />
      </div>
    </main>
  </div>
);

export default App;
