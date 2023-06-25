import React, { Component, Fragment } from 'react'
import { Route, Routes} from 'react-router';
import HomePage from '../pages/HomePage';
import UserLoginPage from '../pages/UserLoginPage';

class AppRoute extends Component {
  render() {
    return <div>
        
        
            <Routes>
                 <Route path="/" element={<HomePage/>}></Route>
                 <Route path="/login" element={<UserLoginPage/>}></Route>
            </Routes>

        


    </div>
    
  }
}

export default AppRoute