import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import 'magic.css/dist/magic.min.css'
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
const beer = document.getElementById('beer');
const banner = document.getElementById('top-holder')
console.log(banner)
const div = document.querySelector('.mhresp');
if (div) {
  div.addEventListener('scroll', (e) => {
    banner.classList.add('zero')
    console.log(e.path[0].scrollTop)
    if (e.path[0].scrollTop == 0) {
      banner.classList.remove('zero')
    }
  });
}


const basket_add = document.querySelectorAll('.add_basket');
((data) => {
  console.log('called')
  basket_add.forEach(basket => {
    basket.addEventListener("click", (event) => {
      event.preventDefault();
      console.log(event.currentTarget)
      event.currentTarget.firstElementChild.classList.add('magictime', 'tinDownOut')
    });

  })
})()

// };

// window.onscroll = function() {myFunction()};

// myFunction()

