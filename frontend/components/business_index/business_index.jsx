import React from 'react';
import BusinessIndexItem from './business_index_item';

class BusinessIndex extends React.Component {
  componentDidMount() {
    this.props.fetchBusinesses();
    this.props.fetchReviews();
  }

  findBizReview(bizId) {
    const reviews = this.props.reviews;
    const rev = reviews.find( review => {
      return review.biz_id === bizId;
    });
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
              business={business}
              review={this.findBizReview(business.id)} />
            ))
          }
        </ul>
      </div>
    );
  }
}


export default BusinessIndex;
