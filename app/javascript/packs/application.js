import React from 'react';
import { render } from 'react-dom';


document.addEventListener('DOMContentLoaded', () => {
  const container = document.body.appendChild(document.createElement('div'));
  render(<App/>, container);
});

console.log('Dixsie is the coolest human being ever!')
