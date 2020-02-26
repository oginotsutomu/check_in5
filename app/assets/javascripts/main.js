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



// $(function() {
//   $('.lesson-hover').hover(function(){
//     $('.main__Large-frame__frame__box__li').css("height","300px");
//     }
//   );
// });


$(function(){
  $("button").click(function(){
    $(".button-ul").slideToggle(200);
  });
});


$(function(){
  $(".click").click(function(){
    var dis = $(this).html() -1;

    $("#sections").animate({"left" : dis * -700 + "px"}, 300);

    $(".parallax").css("background-position", dis * -20 + "px 100%");
    $("#dg1").css("background-position", dis * -150 + "px 100%");
    $("#dg2").css("background-position", dis * 700 + "px 100%");

    $(".current").removeClass("current");
    $(this).addClass("current");
    
    return false;
  });
});