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
      zoom: 15,
      mapTypeControl: false,
      streetViewControl: false,
      fullscreenControl: false,
      zoomControl: true,
      zoomControlOptions: {
        position: google.maps.ControlPosition.TOP_LEFT
      },
    };

    this.map = new google.maps.Map(this.mapNode, mapOptions);
    this.MarkerManager = new MarkerManager(this.map);
    this.MarkerManager.updateMarkers([this.props.biz]);
  }

render() {
    return (
      <div className='map-container-small' ref={ map => this.mapNode = map }>
      </div>
    );
  }
}

export default BizShowMap;
