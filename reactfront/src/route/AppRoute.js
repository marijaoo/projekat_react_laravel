import React, { Component, Fragment } from 'react'
import { Route, Routes} from 'react-router';
import HomePage from '../pages/HomePage';

class AppRoute extends Component {
  render() {
    return <div>
        
        
            <Routes>
                 <Route path="/" element={<HomePage/>}></Route>
            </Routes>

        


    </div>
    
  }
}

export default AppRoute