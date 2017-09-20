import React from 'react';
import UserButton from './user_button/user_button_container';
import SessionFormContainer from './session_form/session_form_container';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
  <div>
    <header>
      <div className='main-header-wrapper'>
        <h1>SugarFix</h1>
        <div className='main-header-bar'>
          <UserButton />
        </div>
      </div>

      <div className='main-header-nav-wrapper'>

      </div>

    </header>

    <AuthRoute path="/login" component={SessionFormContainer} />
    <AuthRoute path="/signup" component={SessionFormContainer} />
  </div>
);

export default App;
