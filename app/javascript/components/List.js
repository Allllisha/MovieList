import 'swiper/swiper.min.css' 
import React from "react"
import { Swiper, SwiperSlide } from 'swiper/react/swiper-react';
// import PropTypes from "prop-types"
class List extends React.Component {
  render () {
    return (
      <div className ="slidersbox">
      <Swiper>
      <SwiperSlide>Slide 1</SwiperSlide>
      <SwiperSlide>Slide 2</SwiperSlide>
      <SwiperSlide>Slide 3</SwiperSlide>
      <SwiperSlide>Slide 4</SwiperSlide>
    </Swiper>
      </div>
    );
  }
}

// List.propTypes = {
//   greeting: PropTypes.string
// };
export default List
