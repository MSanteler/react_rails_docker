import React from 'react';
import ReactDOM from 'react-dom';
import ApiData from './ApiData';

it('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<ApiData />, div);
  ReactDOM.unmountComponentAtNode(div);
});
