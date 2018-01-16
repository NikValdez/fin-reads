$( document ).on('turbolinks:load', function() {
$(window).scroll(function(){
  var scroll = $(window).scrollTop();
  if (scroll > 470) {
    $("#mainNav").css("background" , "#cbbce6e3");
  }

  else{
    $("#mainNav").css("background" , "transparent");
  }
})
})
