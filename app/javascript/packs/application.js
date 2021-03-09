// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { button } from "../components/buttonFavorite";
import { buttonFavCart } from "../components/buttonFavCart";
import { buttonSearch } from "../components/buttonSearch";
import { btnPay } from "../components/btnPay";
import { initSweetalert } from "../plugins/init_sweetalert";
import { heart } from "../components/heartIndex";
// import { buttonShare } from "../components/share";
import { buttonHeart } from "../components/heartCart";
// import { btnDelete } from "../components/btnDelete";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener("turbolinks:load", () => {
  // Call your functions here, e.g:
  // initSelect2();
  btnPay();
  // btnDelete();
  // buttonShare();
  buttonHeart();
  button();
  heart();
  buttonSearch();
  buttonFavCart();
  initSweetalert();
});

// initSweetalert('#btn-del', {
//   title: "Êtes-vous sûre de vouloir supprimer ce produit ?",
//   icon: "warning",
//   buttons: true,
//   dangerMode: true,
// }, (value) => {
//   if (value) {
//     const link = document.querySelectorAll("#del-btn-product");
//     link.click();
//   }
// });
