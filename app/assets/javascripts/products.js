$(function() {
    $('#play-button').click(function() {
        if($('#video')[0].paused){
          $('#video')[0].play();
        }else{
          $('#video')[0].pause();
        }
    });
});
$(function() {
  $("#color-change").hover(
    function(){
      $(this).stop().animate({"background-color": "rgba(0,0,0,1)"},200);
    },
    function(){
      $(this).stop().animate({"background-color": "rgba(0,0,0,0)"},200);
    }
  );
});

$(function(){
    $(window).scroll(function () {
        var ScrTop = $(document).scrollTop();
        if (ScrTop < 800) {
          $('#fixedPagetop').css({'display':'none'});
        }
        if (ScrTop > 800) {
          $('#fixedPagetop').slideDown("slow");
          return false;
        }
    });
});

$(function(){
  $('.scroll').click(function () {
    $('body,html').animate({
      scrollTop: 0
    }, 800);
    return false;
  });
});

// $("#color-change").mouseover(function(){
//   $(this).animate({
//     color: black
//   });
// });
