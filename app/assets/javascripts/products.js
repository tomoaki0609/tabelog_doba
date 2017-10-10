$(function() {
    $('#play-button').click(function() {
        if($('#video')[0].paused){
          $('#video')[0].play();
        }else{
          $('#video')[0].pause();
        }
    });
});
