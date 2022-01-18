$(document).ready(function() {
  $('.owl-carousel').owlCarousel({
    singleItem: true,
    items: 3,
    loop: true,
    nav: true,
    animateOut: 'fadeOut',
    responsive: { 0: { items: 1, }, 400: { items: 1, }, 740: { items: 2, }, 940: { items: 3, }, },
  });
});
