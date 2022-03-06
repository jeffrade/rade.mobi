$(document).ready(function(){
  $('#arrow-to-info').click(function(){
    var $info = $("#info-container");
    $('html,body').animate({scrollTop: $info.offset().top}, 'slow');
  });
});
