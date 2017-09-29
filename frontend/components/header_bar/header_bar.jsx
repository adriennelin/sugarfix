import React from 'react';
import { Link } from 'react-router-dom';

class HeaderBar extends React.Component {
  constructor(props){
    super(props);
    this.state  = {
      query: ""
    };
  }

  signupLink() {
    return (
      <div className='header-signup'>
        <Link to="/signup" className='header-signup-button'>Sign Up</Link>
      </div>
    );
  }

  welcomeMessage(currentUser, logout) {
    return (
    <div className='logged-in-message'>
      <h3>Welcome, {currentUser.username}</h3>
      <button className='logout-button' onClick={logout}>Log Out</button>
    </div>
    );
  }

  handleClick() {
    return (e) => {
      this.setState({query: e.currentTarget.value});
      this.props.omnisearch(e.currentTarget.value);
    };
  }

  render() {
    return (
      <div className='header-bar'>
        <a href='/'>
          <img src='https://res.cloudinary.com/adrienne/image/upload/v1505933816/logo-white_blfc6f.png'
            className='logo' alt='sugarfix logo'></img>
        </a>

        <div className='search-bar'>
          <label className='find'><span>Find</span>
            <input type='text'
              value={this.state.query}
              placeholder='ice cream'/>
          </label>
          <label className='city'><span>Near</span>
            <input type='text'
              value={this.state.query}
              placeholder='San Francisco, CA'/>
          </label>
        <button className='search-button'
                onClick={this.handleClick()}>
                <img src='https://res.cloudinary.com/adrienne/image/upload/v1506708752/search_cqzila.png'/>
        </button>
        </div>

           {this.props.currentUser ?
             this.welcomeMessage(this.props.currentUser, this.props.logout)
                  : this.signupLink()}
      </div>
    );
  }
}

export default HeaderBar;
