import React, { Component, Fragment } from 'react'
import { Route, Routes} from 'react-router';
import HomePage from '../pages/HomePage';
import UserLoginPage from '../pages/UserLoginPage';
import ContactPage from '../pages/ContactPage';
import PurchasePage from '../pages/PurchasePage';
import PrivacyPage from '../pages/PrivacyPage';
import RefundPage from '../pages/RefundPage';
import ProductDetailsPage from '../pages/ProductDetailsPage';
import FavouritePage from '../pages/FavouritePage';
import NotificationPage from '../pages/NotificationPage';
import CartPage from '../pages/CartPage';
import AboutPage from '../pages/AboutPage';

class AppRoute extends Component {
  render() {
    return <div>
        
        
            <Routes>
                 <Route path="/" element={<HomePage/>}></Route>
                 <Route path="/login" element={<UserLoginPage/>}></Route>
                 <Route path="/contact" element={<ContactPage/>}></Route>
                 
                 <Route path="/purchase" element={<PurchasePage/>}></Route>
                 <Route path="/privacy" element={<PrivacyPage/>}></Route>
                 <Route path="/refund" element={<RefundPage/>}></Route>
                 <Route path="/about" element={<AboutPage/>}></Route>

                 <Route path="/productdetails" element={<ProductDetailsPage/>}></Route>

                 <Route path="/favourite" element={<FavouritePage/>}></Route>
                 <Route path="/notification" element={<NotificationPage/>}></Route>

                 <Route path="/cart" element={<CartPage/>}></Route>



            </Routes>

        


    </div>
    
  }
}

export default AppRoute