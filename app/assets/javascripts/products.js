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
// $("#color-change").mouseover(function(){
//   $(this).animate({
//     color: black
//   });
// });
