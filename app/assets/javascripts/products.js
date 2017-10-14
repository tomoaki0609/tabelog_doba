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
  $("#color-change").mouseover(function(){
    $(this).stop().css("background-color","black");
  }).mouseout(function(){
    $(this).stop().css("background-color","");
  });
});
// $("#color-change").mouseover(function(){
//   $(this).animate({
//     color: black
//   });
// });
