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

  getBizHours(){
    const d = new Date();
    const currentDay = d.getDay();
    if (this.props.business.hours){
      const bizHours = this.props.business.hours.split(',')[(currentDay-1)*2+1];
      return (
        bizHours
      );
    } else {
      return null;
    }
  }

  // openNow(){
  //   const d = new Date();
  //   const currentDay = d.getDay();
  //   const bizDay = this.props.business.hours.split(',')[(currentDay-1)*2];
  //   console.log(currentDay);
  //   if (this.getBizHours()) {
  //
  //   }
  // }

  getClockIcon(){
    if (this.getBizHours() === ' Closed') {
      // red clock
      return <img src='https://res.cloudinary.com/adrienne/image/upload/v1506355395/red_clock_icon_ca8xsc.png' />;
    }
    else if (this.getBizHours()) {
      // green clock
      return <img src='http://res.cloudinary.com/adrienne/image/upload/v1506320640/green_clock_icon.png' />;
    } else {
      return null;
    }
  }

  getMenuUrl(){
    if (this.props.business.menu_url){
      return(
        <a href={this.props.business.menu_url}>
          Full menu
          <img src='https://res.cloudinary.com/adrienne/image/upload/v1506325423/blue_link_icon_t4s8ni.png' />
        </a>
      );
    } else {
      return null;
    }
  }

  getMenuIcon(){
    if (this.getMenuUrl()){
      return <img src='https://res.cloudinary.com/adrienne/image/upload/v1506324945/fork_knife_icon_aoxutb.png' />;
    }
  }

  printDollars(){
    if (this.getPriceRange() === null){
      return null;
    }
    switch (this.props.business.cost) {
      case '$':
        return (
          <div className='dollars'>
            <img src='https://res.cloudinary.com/adrienne/image/upload/v1506321961/green_dollar_icon_hdaca0.png'/>
            <img src='https://res.cloudinary.com/adrienne/image/upload/v1506321961/grey_dollar_icon_igjxjs.png'/>
            <img src='https://res.cloudinary.com/adrienne/image/upload/v1506321961/grey_dollar_icon_igjxjs.png'/>
            <img src='https://res.cloudinary.com/adrienne/image/upload/v1506321961/grey_dollar_icon_igjxjs.png'/>
          </div>
        );
      case '$$':
        return (
          <div className='dollars'>
            <img src='https://res.cloudinary.com/adrienne/image/upload/v1506321961/green_dollar_icon_hdaca0.png'/>
            <img src='https://res.cloudinary.com/adrienne/image/upload/v1506321961/green_dollar_icon_hdaca0.png'/>
            <img src='https://res.cloudinary.com/adrienne/image/upload/v1506321961/grey_dollar_icon_igjxjs.png'/>
            <img src='https://res.cloudinary.com/adrienne/image/upload/v1506321961/grey_dollar_icon_igjxjs.png'/>
          </div>
        );
      case '$$$':
        return (
          <div className='dollars'>
            <img src='https://res.cloudinary.com/adrienne/image/upload/v1506321961/green_dollar_icon_hdaca0.png'/>
            <img src='https://res.cloudinary.com/adrienne/image/upload/v1506321961/green_dollar_icon_hdaca0.png'/>
            <img src='https://res.cloudinary.com/adrienne/image/upload/v1506321961/green_dollar_icon_hdaca0.png'/>
            <img src='https://res.cloudinary.com/adrienne/image/upload/v1506321961/grey_dollar_icon_igjxjs.png'/>
          </div>
        );
      case '$$$$':
        return (
          <div className='dollars'>
            <img src='https://res.cloudinary.com/adrienne/image/upload/v1506321961/green_dollar_icon_hdaca0.png'/>
            <img src='https://res.cloudinary.com/adrienne/image/upload/v1506321961/green_dollar_icon_hdaca0.png'/>
            <img src='https://res.cloudinary.com/adrienne/image/upload/v1506321961/green_dollar_icon_hdaca0.png'/>
            <img src='https://res.cloudinary.com/adrienne/image/upload/v1506321961/green_dollar_icon_hdaca0.png'/>
          </div>
        );
      default:
        return null;
    }
  }

  getPriceRange(){
    switch (this.props.business.cost) {
      case '$':
        return 'Inexpensive';
      case '$$':
        return 'Moderate';
      case '$$$':
        return 'Pricey';
      case '$$$$':
        return 'High-end';
      default:
      return null;
    }
  }


  getHealthScore(){
    if (this.props.business.health_score){
      return this.props.business.health_score;
    } else {
      return null;
    }
  }

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

  render() {
    const biz = this.props.business;
    if (biz === undefined ) {
      return (
        <div></div>
      );
    }
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
              <ul className='summary-box-list'>
                <li className='hours summary-box-item'>

                  <div className='summary-box-icon clock'>
                    {this.getClockIcon()}
                  </div>
                  <div className='summary-box-text'>
                    <dl className='summary-dl'>
                      <dt>
                        Today <b>{this.getBizHours()}</b>
                      </dt>
                    </dl>
                  </div>
                </li>

                <li className='menu-link summary-box-item'>
                  <div className='summary-box-icon fork-knife'>
                    {this.getMenuIcon()}
                  </div>
                  <div className='summary-box-text'>
                    {this.getMenuUrl()}
                  </div>
                </li>

                <li className='price-range summary-box-item'>
                  <div className='summary-box-icon'>
                      {this.printDollars()}
                  </div>
                  <div className='summary-box-text'>
                    <dl className='summary-dl'>
                      <dt>Price range</dt>
                      <dd>
                        {this.getPriceRange()}
                      </dd>
                    </dl>
                  </div>
                </li>

                <li className='health-score summary-box-item'>
                  <div className='summary-box-icon'>
                    <div className='score-box'>
                      {this.getHealthScore()}
                    </div>
                  </div>
                  <div className='summary-box-text'>
                    {this.printHealthScore()}
                  </div>
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
