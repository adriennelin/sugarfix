import React from 'react';
import { withRouter } from 'react-router-dom';

class ReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      rating: 0,
      body: '',
      biz_id: this.props.match.params.businessId,
      reviewer_name: '',
      reviewer_img: '',
      review_photos: ''
    };
    this.navigateToBusinessShow = this.navigateToBusinessShow.bind(this);
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

  render() {
    return (
      <div className='review-form-main-container'>
        <div className='column column-left'>
          <div className='review-header'>
            <h3>Write a Review</h3>
          </div>
          <div className='review-form-biz-summary'>
            <div className='biz-photo'>
              <img src/>
            </div>
          </div>
          <div className="review-form">
            <form onSubmit={this.handleSubmit()}>
              <label>Rating</label>
              <br/>
              <input
                type="number"
                value={this.state.rating}
                onChange={this.update("rating")}
              />
              <br/>

              <label>Your Review</label>
              <br/>

              <textarea
                cols="30"
                rows="10"
                value={this.state.body}
                onChange={this.update("body")}
              />
              <br/>
              <input type="submit" />
            </form>
            <button onClick={this.navigateToBusinessShow}>Cancel</button>
          </div>
        </div>
        <div className='column column-right'>

        </div>
      </div>

    );
 }
}

export default withRouter(ReviewForm);
