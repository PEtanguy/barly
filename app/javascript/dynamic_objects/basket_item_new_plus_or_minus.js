// // const buttonPlus = document.getElementById("btnPlus");
// // const buttonMinus = document.getElementById("btnMinus");
// // const counter = document.getElementById("counter");
// // const price = document.getElementById("submit");


// // buttonPlus.addEventListener("click", (event) => {
// //   let integer = parseInt(counter.innerText, 10);
// //   integer += 1;
// //   counter.innerHTML = integer;
// //   let array = [];
// //   array = price.value.split("");
// //   // console.log(array);
// //   let priceInt = array.pop();
// //   priceInt = array.splice(0, 4);
// //   // console.log(array);
// //   const priceToI = parseInt(array.join(""), 10);
// //   const priceNew = (priceToI + 1).toString();
// //   const interpolated = `Pay ${priceNew}£`;
// //   price.value = interpolated;
// //   console.log(price.value);
// // });

// // buttonMinus.addEventListener("click", (event) => {
// //   let integer = parseInt(counter.innerText, 10);
// //   integer -= 1;
// //   counter.innerHTML = integer;
// // });

// // $(document).on("click", function() {
// //    $("#your_id").show();
// // });


// const basket_item_field = document.querySelectorAll('.basket_item_field');

// const insertBasketItem = (data) => {
//     const basket_item = `<div >
//   @menu_item = MenuItem.find(params[:id])
//   <h2> Selected Item:</h2>
//   <%= @menu_item.price * quantity %>

//   <div class="actions">
//     <a class="btn round-bordered incrementer minus"  id="btnMinus" data-offset="-1">-</a>
//     <span id="counter" data-count="1">1</span>
//     <a href="#" id= "btnPlus" class="btn round-bordered incrementer" data-offset="1">+</a>
//   </div>


//   <button>
//     Add to basket
//   </button>
// </div>`;
//   basket_item_field.insertAdjacentHTML('beforeend', basket_item);
// };

// // const fetchMovies = (query) => {
// //   fetch(`http://www.omdbapi.com/?s=${query}&apikey=adf1f2d7`)
// //     .then(response => response.json())
// //     .then(insertBasketItem);
// // };

// // fetchMovies('harry potter'); // on 1st page load
// const button = document.querySelectorAll('.add_to_basket');

// const listener = () => {
//   button.addEventListener('click', (event) => {
//   insertBasketItem;
//   });
// };

// listener();

// // const form = document.querySelectorAll('add_to_basket');
// // form.addEventListener('click', (event) => {
// //   event.preventDefault();
// //   basket_item_field.innerHTML = '';
// //   const input = document.querySelector('#search-input');
// //   insertBasketItem;
// // });
