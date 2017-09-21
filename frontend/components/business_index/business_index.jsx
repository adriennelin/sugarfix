import React from 'react';
import BusinessIndexItem from './business_index_item';

class BusinessIndex extends React.Component {
  componentDidMount() {
    this.props.fetchBusinesses();
  }

  render() {
    return (
      <div>
        Businesses
        <ul>
          {
            this.props.businesses.map(business => (
            <BusinessIndexItem
              key={business.id}
              business={business} />
            ))
          }
        </ul>
      </div>
    );
  }
}


export default BusinessIndex;
