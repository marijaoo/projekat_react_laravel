import React, { Component, Fragment } from 'react';
import { BrowserRouter } from 'react-router-dom';
import AppRoute from './route/AppRoute';
import './App.css';

class App extends Component{
    render() {
      return <div>

          <AppRoute/>


      </div>;
  }
}

export default App;