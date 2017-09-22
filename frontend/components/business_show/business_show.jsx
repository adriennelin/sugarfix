import React from 'react';
import ratingToStars from '../../util/star_util';

class BusinessShow extends React.Component {
  componentDidMount() {
    this.props.fetchBusiness(this.props.match.params.businessId);
  }

  render() {
    const biz = this.props.business;
    return (
      <div className='biz-show-container'>
        <div className='biz-top-shelf'>
          <div className='biz-content-container'>
            <div className='biz-header'>
              <div className='biz-header-left'>
                <h1 className='biz-show-name'>
                  {biz.name}
                </h1>

                <div className='biz-show-stars-reviews'>
                  <div className='biz-show-stars'>
                    <img
                      src={ratingToStars(biz.rating)}
                      alt={`${biz.rating} star img`}/>
                  </div>

                  <span className='biz-show-review-count'>

                  </span>
                </div>

                <div className='biz-show-price-category'>
                  <span className='price'>
                    {biz.cost}
                  </span>

                  <span className='bullet'>
                    •
                  </span>

                  <span className='category'>
                    {biz.category}
                  </span>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    );
  }
}

export default BusinessShow;
