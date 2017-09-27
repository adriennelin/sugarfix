import React from 'react';
import ReactDOM from 'react-dom';
import { withRouter } from 'react-router-dom';

class Map extends React.Component {
  componentDidMount() {
    const mapOptions = {
      center: { lat: 37.7758, lng: -122.435 }, // SF
      zoom: 13
    };

    this.map = new google.maps.Map(this.mapNode, mapOptions);
  }

render() {

    return (
      <div className='map-container' ref={ map => this.mapNode = map }>
        <div className='map-box'>

        </div>
      </div>
    );
  }
}

export default Map;
