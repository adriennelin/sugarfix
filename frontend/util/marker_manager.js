/* global google:false */

class MarkerManager {
  constructor(map, handleClick){
    this.map = map;
    this.handleClick = handleClick;
    this.markers = {};
  }

  updateMarkers(businesses){
    const bizObj = {};
    businesses.forEach(biz => bizObj[biz.id] = biz);

    businesses
      .filter(biz => !this.markers[biz.id])
      .forEach(newBiz => this.createMarkerFromBiz(newBiz, this.handleClick));

    Object.keys(this.markers)
      .filter(bizId => !bizObj[bizId])
      .forEach((bizId) => this.removeMarker(this.markers[bizId]));
  }

  createMarkerFromBiz(biz) {
    const position = new google.maps.LatLng(biz.lat, biz.lng);
    const marker = new google.maps.Marker({
      position,
      map: this.map,
      bizId: biz.id
    });

    marker.addListener('click', () => this.handleClick(biz));
    this.markers[marker.bizId] = marker;
  }

  removeMarker(marker) {
    this.markers[marker.bizId].setMap(null);
    delete this.markers[marker.bizId];
  }
}

export default MarkerManager;
