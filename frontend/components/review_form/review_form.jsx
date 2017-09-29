import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import PreviousReviewItem from './previous_review_item';
import Rating from 'react-rating';

class ReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      biz: '',
      reviews: '',
      rating: 0,
      body: '',
      biz_id: this.props.match.params.businessId,
      reviewer_name: '',
      reviewer_img: '',
      review_photos: ''
    };
    this.navigateToBusinessShow = this.navigateToBusinessShow.bind(this);
  }

  componentDidMount() {
    this.props.fetchBusiness(this.props.match.params.businessId);
    this.props.fetchReviews(this.props.match.params.businessId);
    window.scrollTo(0, 0);
  }

  componentWillReceiveProps(nextProps) {
    this.getFirstImage();
  }

  navigateToBusinessShow() {
    const url = `/businesses/${this.props.match.params.businessId}`;
    this.props.history.push(url);
  }

  handleSubmit() {
    return (e) => {
      e.preventDefault();
      const bizId = this.props.match.params.businessId;
      const review = Object.assign({}, this.state, {
        biz_id: bizId
      });
      this.props.createReview({review});
      this.navigateToBusinessShow();
    };
  }

  update(field) {
    return e => this.setState({ [field]: e.currentTarget.value });
  }

  getFirstImage(){
    if (!this.props.business) {
      return null;
    }
    const images = this.props.business.img_url.split(",");
    return <img src={images[0]} />;
  }

  render() {
    const biz = this.props.business;
    const reviews = this.props.reviews;
    if (biz === undefined ) {
      return ( <div></div> );
    }

    return (
      <div className='review-form-main-container'>
        <div className='column column-left'>
          <div className='review-header'>
            <h3>Write a Review</h3>
          </div>
          <div className='review-form-biz-summary'>
            <div className='biz-photo'>
              {this.getFirstImage()}
            </div>

            <div className='main-attr'>
              <span className='rev-biz-name'>
                <Link to={`/businesses/${biz.id}`}>
                {biz.name}</Link></span>

              <div className='price-category'>
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
              <address className='address'>
                {biz.address.split(',')[0]}
                <br/>
                {biz.address.split(',')[1]},
                {biz.address.split(',')[2]}
              </address>
            </div>
          </div>

          <div className="review-form">
            <form onSubmit={this.handleSubmit()}>
              <label>Your review</label>

              <div className='rating-box'>

                <input
                  type="number"
                  value={this.state.rating}
                  onChange={this.update("rating")}
                />

                <div className='rating-and-comment'>
                  <div className='review-rating-box'>
                    <Rating
                      empty={
                        <img src="https://res.cloudinary.com/adrienne/image/upload/v1506642061/empty_star.png"/>}
                      full={
                        <img src="https://res.cloudinary.com/adrienne/image/upload/v1506642062/full_star.png"/>}
                      />
                    <p>Select your rating.</p>
                  </div>
                  </div>

                  <div className='textarea-container'>
                    <textarea className='review-textarea'
                      cols="30"
                      rows="10"
                      value={this.state.body}
                      onChange={this.update("body")}
                      placeholder="Your review helps others learn about
                      great dessert spots.

                      Please don't review if you received a freebie for
                      writing this review, or if you're connected to the
                      owner or employees."
                    />
                </div>
              </div>
              <br/>
                <div className='submit-and-cancel'>
                  <input className='submit-button' type="submit" value='Post Review'/>
                  <button className='review-cancel-button'
                          onClick={this.navigateToBusinessShow}>Cancel</button>
                </div>
            </form>

          </div>

        </div>
        <div className='column column-right'>
          <h3> Reviews for {biz.name} </h3>
          <div className='example-reviews-list'>
            <ul>
              {
                reviews.map(review => (
                  <PreviousReviewItem
                    key={review.id}
                    review={review}
                    />
                ))
              }
            </ul>
          </div>
        </div>

      </div>

    );
 }
}

export default withRouter(ReviewForm);
