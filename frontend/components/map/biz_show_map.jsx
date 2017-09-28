import React from 'react';
import ReactDOM from 'react-dom';
import { withRouter } from 'react-router-dom';
import MarkerManager from '../../util/marker_manager';

const getCoordsObj = latLng => ({
  lat: latLng.lat(),
  lng: latLng.lng()
});

class BizShowMap extends React.Component {
  componentDidMount() {
    const mapOptions = {
      center: { lat: this.props.biz.lat, lng: this.props.biz.lng },
      zoom: 9,
      mapTypeControl: false,
      streetViewControl: false,
      zoomControlOptions: {
        position: google.maps.ControlPosition.TOP_LEFT,
      fullscreenControl: false
    }
    };

    this.map = new google.maps.Map(this.mapNode, mapOptions);
    this.MarkerManager = new MarkerManager(this.map);
    // this.registerListeners();
    this.MarkerManager.updateMarkers([this.props.biz]);
  }

  // componentDidUpdate() {
  //   this.MarkerManager.updateMarkers(this.props.businesses);
  // }

  // registerListeners() {
  //   google.maps.event.addListener(this.map, 'idle', () => {
  //     const { north, south, east, west } = this.map.getBounds().toJSON();
  //     const bounds = {
  //       northEast: { lat: north, lng: east },
  //       southWest: { lat: south, lng: west } };
  //     this.props.updateFilter('bounds', bounds);
  //   });
  //   google.maps.event.addListener(this.map, 'click', (event) => {
  //     const coords = getCoordsObj(event.latLng);
  //     this.handleClick(coords);
  //   });
  // }

render() {
    return (
      <div className='map-container' ref={ map => this.mapNode = map }>
      </div>
    );
  }
}

export default BizShowMap;
