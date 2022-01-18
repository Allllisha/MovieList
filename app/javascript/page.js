

$(function(){
  $('#flipbook').turn(
    　　　　　　　
      {　　　　display:'single',
              // 自動でページをめくったときの高さ
              elevation: 50,
            
              // ページめくりのスピード(ms)
              duration: 1000,

              // ページをめくるときの影->有効
              gradients: true,

              // 自動中央揃え->無効
              autoCenter: true,

              // 右開きか左開きかの設定->右開き
              direction: 'ltr',

              width: 450,
              height: 580,
             
              
      }
  );

  $('#prevpage').click(function(){
      $('#katudon_turn').turn('previous');
  });

  $('#nextpage').click(function(){
      $('#katudon_turn').turn('next');
  });

});

