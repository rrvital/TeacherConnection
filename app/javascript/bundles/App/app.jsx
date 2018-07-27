import React, { Component } from 'react';
import GoogleMapReact from 'google-map-react';

import meetups from './meetups';
import MeetupList from './meetup_list';
import Marker from './marker';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedmeetup: meetups[0],
      meetups
    };
  }

  center() {
    return {
      lat: this.state.selectedmeetup.lat,
      lng: this.state.selectedmeetup.lng
    };
  }

  selectmeetup = (index) => {
    this.setState({ selectedmeetup: meetups[index] });
  }

  render() {
    return (
      <div>
        <MeetupList
          meetups={this.state.meetups}
          selectedmeetup={this.state.selectedmeetup}
          selectmeetup={this.selectmeetup}
        />
        <div className="map-container">
          <GoogleMapReact defaultCenter={this.center()} defaultZoom={12}>
            <Marker lat={this.state.selectedmeetup.lat} lng={this.state.selectedmeetup.lng} />
          </GoogleMapReact>
        </div>
      </div>
    );
  }
}

export default App;
