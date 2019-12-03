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
// const banner = document.getElementById('top-holder')
const bannerImage = document.querySelector('.bar-banner')
const bannerText = document.querySelector('.bar-details')
// console.log(banner)
const div = document.querySelector('.mhresp');
if (div) {
  div.addEventListener('scroll', (e) => {
    bannerImage.classList.add('zero')
    bannerText.classList.add('zero-text')
    console.log(e.path[0].scrollTop)
    if (e.path[0].scrollTop == 0) {
      bannerImage.classList.remove('zero')
      bannerText.classList.remove('zero-text')

    }
  });
}


const basket_add = document.querySelectorAll('.add_basket');
((data) => {
  console.log('called')
  basket_add.forEach(basket => {
    basket.addEventListener("click", (event) => {
      event.preventDefault();
      event.currentTarget.firstElementChild.classList.add('magictime', 'tinDownOut')
      const effect_on = document.querySelector('.tinDownOut');
      setTimeout(function(){ effect_on.classList.add('second_one'); }, 1000);
      setTimeout(function(){ effect_on.classList.remove('magictime', 'tinDownOut'); }, 1000);
      const second_one = document.querySelector('.second_one');

      setTimeout(function(){ effect_on.classList.add('magictime', 'swashIn'); }, 1000);


    });

  })
})()

// };

// window.onscroll = function() {myFunction()};

// myFunction()

