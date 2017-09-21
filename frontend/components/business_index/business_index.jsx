import React from 'react';
import BusinessIndexItem from './business_index_item';

class BusinessIndex extends React.Component {
  componentDidMount() {
    this.props.fetchBusinesses();
  }

  render() {
    return (
      <div className='biz-index'>
        <ul className='biz-index-ul'>
          {
            this.props.businesses.map((business, idx) => (
            <BusinessIndexItem
              key={business.id}
              idx={idx+1}
              business={business} />
            ))
          }
        </ul>
      </div>
    );
  }
}


export default BusinessIndex;
