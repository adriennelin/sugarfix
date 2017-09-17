# Full Stack Project - Yelp

## Component Hierarchy

## MVP Required Features
+ Business Page
+ Search / filters
+ Reviews / ratings
+ Map
+ Bonus: Mark reviews funny, cool, useful etc.
+ Bonus: Profile
+ Bonus: Friends

## General
+ `App`
  + `HeaderContainer`
    + `SearchBar`
    + `NavBar`
  + `MainBody` (all other components rendered here)
  + `Footer`

## Browse Businesses, Filters
+ `FilterContainer`
  + `FilterBar`
+ `BusinessPageContainer`
  + `BusinessIndexContainer`
    + `BusinessIndex`
      + `BusinessIndexItem`
  + `GoogleMapContainer`
    + `MapHeader`
    + `Map`

## Business Show
+ `BusinessContentContainer`
  + `BusinessHeader`
  + `GoogleMap`
  + `BusinessPhotos`
+ `BusinessMainContainer`
  + `ReviewsIndexContainer`
    + `ReviewsIndex`
    + `ReviewIndexItem`
  + `SidebarContainer`
    + `BusinessSummary`

## Session Form
+ `SessionFormContainer`
  + `SessionForm`
