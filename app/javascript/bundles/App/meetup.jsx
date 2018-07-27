import React, { Component } from 'react';

class Meetup extends Component {
  handleClick = () => {
    this.props.selectmeetup(this.props.index);
  }

  render() {
    return (
      <div className={`card${this.props.selected ? ' active' : ''}`} style={{ backgroundImage: `linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.2)), url('${this.props.meetup.imageUrl}')` }}>
        <div className="card-category">{this.props.meetup.Capacity} {this.props.meetup.profile_pic}</div>
        <div className="card-description">
          <h2>{this.props.meetup.name}</h2>
        </div>
        <a className="card-link" href="#" onClick={this.handleClick}></a>
      </div>
    );
  }
}

export default Meetup;
