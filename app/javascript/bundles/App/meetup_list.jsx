import React from 'react';
import Meetup from './meetup';

const MeetupList = (props) => {
  const renderList = () => {
    return props.meetups.map((meetup, index) => {
      return (
        <Meetup
          meetup={meetup}
          key={meetup.lat}
          selected={meetup.name === props.selectedmeetup.name}
          index={index}
          selectmeetup={props.selectmeetup}
        />
      );
    });
  };

  return (
    <div className="meetup-list">
      {renderList()}
    </div>
  );
};

export default MeetupList;
