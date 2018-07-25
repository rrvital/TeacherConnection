import React, { Component } from 'react';
import ForumsFeed from './components/ForumsFeed.js'
import ForumsNew from './components/ForumsNew.js'



class Forums extends Component {
  render() {
    return (
      <div>
        < ForumsFeed />
        < ForumsNew />
      </div>
    );
  }
}
 
export default Forums;
