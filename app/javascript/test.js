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




$(function(){
    $('#flipbook').turn(
        {
                // 自動でページをめくったときの高さ
                elevation: 50,
              
                // ページめくりのスピード(ms)
                duration: 1000,
 
                // ページをめくるときの影->有効
                gradients: true,
 
                // 自動中央揃え->無効
                autoCenter: false,
 
                // 右開きか左開きかの設定->右開き
                direction: 'ltr',

                width: 500,
                height: 600,
               
                display:'single' 
        }
    );
  
    $('#prevpage').click(function(){
        $('#katudon_turn').turn('previous');
    });
 
    $('#nextpage').click(function(){
        $('#katudon_turn').turn('next');
    });
 
});

