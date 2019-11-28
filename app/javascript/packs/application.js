import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
// import $ from 'jquery'
// import 'slick-carousel'
// import 'slick-carousel/slick/slick.css'
// import 'slick-carousel/slick/slick-theme.css'

initMapbox();

// $('.drink-buttons').slick({
//   arrows: false,
//   slidesToShow: 4,
//   infinite: false
// })


const drinksNavbar = document.getElementById("drinks-navbar")

// var sticky = drinksNavbar.offsetTop;

// function myFunction() {
const div = document.querySelector('.mhresp');
if (div) {
  div.addEventListener('scroll', () => {
    if (window.scrollY >= 0.3*window.innerHeight) {
      drinksNavbar.classList.add("sticky")
    } else {
      drinksNavbar.classList.remove("sticky");
    }
  });
}
// };

// window.onscroll = function() {myFunction()};

// myFunction()
