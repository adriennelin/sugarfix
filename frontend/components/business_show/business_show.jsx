import React from 'react';
import { Link } from 'react-router-dom';
import ratingToStars from '../../util/star_util';


class BusinessShow extends React.Component {
  componentDidMount() {
    this.props.fetchBusiness(this.props.match.params.businessId);
  }

  getCrossStreets(){
    if (this.props.business.cross_streets){
      return (`b/t ${this.props.business.cross_streets}`);
    }
  }

  getURL(){
    if (this.props.business.site_url){
      return <a href={this.props.business.site_url}
         target='_blank'>
        {this.props.business.site_url.split('.')[1]}.com</a>;
    }
  }

  getLinkIcon(){
    if (this.getURL()) {
      return <img src='https://res.cloudinary.com/adrienne/image/upload/v1506113350/link_icon_sjqvva.png' />;
    }
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
                <Link to={`/businesses/${biz.id}/newreview`}
                      className='write-review'
                  >
                  Write a Review
                </Link>
              </div>

            </div>

            <div className='biz-sub-header'>
              <div className='map-box-container'>
                <div className='map-box'>
                  <div className='map'>

                  </div>
                  <div className='map-text'>
                    <ul>
                      <span className='icon'>
                        <img src='https://res.cloudinary.com/adrienne/image/upload/v1506113350/marker_icon_rwjbh6.png'
                          />
                      </span>
                      <li className='map-address-box-li'>
                        <div className='map-address-box'>
                          <address className='address'>
                            {biz.address.split(',')[0]}
                            <br/>
                            {biz.address.split(',')[1]},
                            {biz.address.split(',')[2]}
                          </address>
                          <div className='cross-streets'>
                            {this.getCrossStreets()}</div>
                          <span>{biz.neighborhood}</span>
                        </div>
                      </li>

                      <span className='icon'>
                        <img src='https://res.cloudinary.com/adrienne/image/upload/v1506113350/phone_icon_nep5f4.png'
                          />
                      </span>
                      <li className='phone'>
                        <span>{biz.phone}</span>
                      </li>
                        <span className='icon'>
                          {this.getLinkIcon()}
                        </span>
                      <li className='biz-url'>
                          {this.getURL()}
                      </li>


                    </ul>
                  </div>
                </div>
              </div>

              <div className='photo-container'>
                <div className='photo-strip'>
                  <div className='photo-strip-media prev'>

                  </div>
                  <div className='photo-strip-media curr'>
                    <div className='photo photo-1'>

                    </div>
                    <div className='photo photo-2'>

                    </div>
                    <div className='photo photo-3'>

                    </div>
                  </div>
                  <div className='photo-strip-media next'>

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div className='biz-main-container'>
          <div className='column column-left'>

          </div>
          <div className='column column-right'>
            <div className='summary-box'>
              <ul>
                <li className='hours summary-box-item'>

                </li>
                <li className='price-range summary-box-item'>

                </li>
                <li className='health-score summary-box-item'>

                </li>

              </ul>
            </div>
          </div>
        </div>

      </div>
    );
  }
}

export default BusinessShow;
