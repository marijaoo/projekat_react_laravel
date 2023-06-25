import React, { Component, Fragment } from 'react';
import FeaturedProducts from '../components/home/FeaturedProducts';
import Categories from '../components/home/Categories';

export class HomePage extends Component {
  render() {
    return <div>
        <Fragment>

            <FeaturedProducts/>
            <Categories/>

        </Fragment>
    </div>;
  }
}
export default HomePage;