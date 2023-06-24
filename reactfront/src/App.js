import React, {Component} from 'react';
import {Button} from 'react-bootstrap';
import './App.css';

export class App extends Component{
    render() {
      return <div>

        <Button variant="warning"> Warning </Button>
        <Button variant="info"> <i className="fa fa-home"></i> </Button>

      </div>;
  }
}