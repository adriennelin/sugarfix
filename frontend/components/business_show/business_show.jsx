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
            <div className='biz-header group'>
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

              <div className='biz-header-right'>
              </div>

            </div>

            <div className='biz-sub-header'>
              <div className='map-box-container'>
                <div className='map-box'>
                  <div className='map'>

                  </div>
                  <div className='map-text'>
                    <ul>
                      <li className='map-address-box-li'>
                        <div className='map-address-box'>
                          <address className='address'>
                            {biz.address.split(',')[0]}
                            <br/>
                            {biz.address.split(',')[1]},
                            {biz.address.split(',')[2]}
                          </address>
                          <span>b/t {biz.cross_streets}</span><br/>
                          <span>{biz.neighborhood}</span>
                        </div>
                      </li>

                      <li className='phone'>
                        <span>{biz.phone}</span>
                      </li>

                      <li className='biz-url'>
                        <span>
                          <a href={biz.site_url}>
                            {biz.site_url.split('www.')[1]}</a>
                        </span>
                      </li>


                    </ul>
                  </div>
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
