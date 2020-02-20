$(function() {
  $('.lesson-hover').hover(function(){
    $(this).find(".text-contents").addClass('text-active');
      
    },
    function() {
      // 子要素の「.text-contents」の要素を取得し、text-activeクラスを外してください
      $(this).find('.text-contents').removeClass('text-active');
        
    }
  );
});



$(function() {
  $('.lesson-hover').hover(function(){
    $('.main__Large-frame__frame__box__li').css("height","300px");
    }
  );
});
