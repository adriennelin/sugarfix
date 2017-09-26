import React from 'react';
import BusinessIndexItem from './business_index_item';

class BusinessIndex extends React.Component {
  componentDidMount() {
    this.props.fetchBusinesses();
    this.props.fetchReviews();
  }

  findReview(bizId) {
    const reviews = this.props.reviews;
    reviews.find(this.findBizReview());
  }

  findBizReview(review, bizId) {
    return review.biz_id === bizId;
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
