import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

// import * as APIUtil from './util/api_util';
// import { receiveSearchGiphys, fetchSearchGiphys } from './actions/giphy_actions';
// window.APIUtil = APIUtil;


document.addEventListener('DOMContentLoaded', () => {
    const store = configureStore();
    const root = document.getElementById("root");
    
    // window.receiveSearchGiphys = receiveSearchGiphys;
    // window.fetchSearchGiphys = fetchSearchGiphys;
    window.store = store;
    
    ReactDOM.render(<Root store={store}/>, root);
});
