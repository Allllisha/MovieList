// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
// app/javascript/packs/application.js
import 'bootstrap';
import Glide from '@glidejs/glide'






import { initUpdateNavbarOnScroll } from '../components/navbar';


document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initUpdateNavbarOnScroll();
  var sliders = document.querySelectorAll('.glide');
  for (var i = 0; i < sliders.length; i++) {
    var glide = new Glide(sliders[i], {
      type: "carousel",
      perView: 1,
      autoplay: 5000
    });
    glide.mount()
  }
  var sliders2 = document.querySelectorAll('.glide2');
  for (var i = 0; i < sliders2.length; i++) {
    var glide = new Glide(sliders2[i], {
      type: "carousel",
      perView: 4,
    });
    glide.mount()
  }
});







// Support component names relative to this directory:
var componentRequireContext = require.context("components", true);
var ReactRailsUJS = require("react_ujs");
ReactRailsUJS.useContext(componentRequireContext);
