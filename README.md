![sugarfix logo](https://res.cloudinary.com/adrienne/image/upload/c_scale,w_200/v1506828348/sugarfix/sugarfix_logo_br.png)

SugarFix is a dessert-themed, full-stack web application clone of Yelp. Users can browse local dessert spots, read user generated reviews, and add their own reviews.

Get your SugarFix! - Live [demo](https://sugarfix-yelp-clone.herokuapp.com/#/).

## Features
* Browse and search for businesses by location
* Filter results using the current view in Google Maps.
* Obtain business information such as address, phone, hours, website, menu, and health score.
* Read user-generated reviews and photos.
* Create and post reviews.

## Technologies
* Ruby on Rails backend
* React Redux frontend
* Google Maps Api
---

## Google Maps Real-time Search

SugarFix is focused on bringing local businesses to users. A key feature is an interactive map that displays search results visually. The map allows the user to filter businesses based on what is currently shown inside the map frame.

![google maps gif](https://res.cloudinary.com/adrienne/image/upload/c_scale,h_410,q_auto:good/v1506726612/sugarfix/google_maps_filter_gnhvau.gif)

## Content Rich Business View

Users can find all relevant business information directly on the SugarFix business pages. Useful data such as hours are dynamically rendered depending on availability. For example, if a location is closed that day, the clock icon turns red instead of green.

A select trio of food photos for that business are featured. If a menu is available, users will see the direct menu link for convenience in addition to the business website.

Reviews are displayed in a clean format and show the reviewer photo to increase community and trust. 

![Tartine show page](https://res.cloudinary.com/adrienne/image/upload/v1506717256/sugarfix/Tartine_show_page_jieajj.png)

---
## Select Code Snippets

#### Dynamic Business Information

To account for varying levels of available business information, each business object is rendered with an `if` statement.
```
  printHealthScore(){
    if (this.getHealthScore()) {
      return (
        <dl className='summary-dl'>
          <dt>Health inspection</dt>
          <dd>
            {`${this.props.business.health_score} out of 100`}
          </dd>
        </dl>
      );
    } else {
      return null;
    }
  }
  ```

#### Google Maps Marker Rerendering

Map markers rerender automatically after moving the map. This is accomplished by a `registerListeners` function that updates the map boundaries after any detected dragging.

```
  registerListeners() {
    google.maps.event.addListener(this.map, 'idle', () => {
      const { north, south, east, west } = this.map.getBounds().toJSON();
      const bounds = {
        northEast: { lat: north, lng: east },
        southWest: { lat: south, lng: west } };
      this.props.updateFilter('bounds', bounds);
    });

  }

```

Map marker numbers reflect the order of the current listed businesses. To account for the marker number, I added an `idx` variable to marker creation that pulls from the current business array. Markers are also deleted if the business is not part of the current filter.

```
  updateMarkers(businesses){
    const bizObj = {};
    businesses.forEach(biz => bizObj[biz.id] = biz);

    businesses
      .filter(biz => !this.markers[biz.id])
      .forEach((newBiz,idx) =>
        this.createMarkerFromBiz(newBiz, idx+1, this.handleClick));

    Object.keys(this.markers)
      .filter(bizId => !bizObj[bizId])
      .forEach(bizId => this.removeMarker(this.markers[bizId]));
  }
  
```
---

## Future Development

* User profile
  * Feature to add personalized user profile info - photo, city, interests, etc.
  * Display user reviews under the user profile show page.
  * Option to add other SugarFix users as friends.
  * See friend list from profile.
* Useful, Funny, Cool Reviews
  * Ability to rate other reviews as useful, funny, or cool.
  * See the total number of useful, funny, or cool votes next to each review.
* Multi-city platform
  * Expand SugarFix outside San Francisco and implement ability to search by city.
  
---
Additional supporting documents (wireframes, database schema, sample state, routes) can be found in the project wiki.
