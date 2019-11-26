const buttonPlus = document.getElementById("btnPlus");
const buttonMinus = document.getElementById("btnMinus");
const counter = document.getElementById("counter");
const price = document.getElementById("submit");


buttonPlus.addEventListener("click", (event) => {
  let integer = parseInt(counter.innerText, 10);
  integer += 1;
  counter.innerHTML = integer;


  let array = [];
  array = price.value.split("");
  // console.log(array);
  let priceInt = array.pop();
  priceInt = array.splice(0, 4);
  // console.log(array);
  const priceToI = parseInt(array.join(""), 10);
  const priceNew = (priceToI + 1).toString();
  const interpolated = `Pay ${priceNew}£`;
  price.value = interpolated;
  console.log(price.value);
});

buttonMinus.addEventListener("click", (event) => {
  let integer = parseInt(counter.innerText, 10);
  integer -= 1;
  counter.innerHTML = integer;
});

