$( document ).on('turbolinks:load', function() {
  $(window).scroll(function(){
    var scroll = $(window).scrollTop();
    if (scroll > 470) {
      $("#mainNav").css("background" , "#2b0571e8");
    }

    else{
      $("#mainNav").css("background" , "transparent");
    }
  })
})

$( document ).on('turbolinks:load', function() {
  $(".button").click(function() {
   var y = $(window).scrollTop();
    $(window).scrollTop(y+475);
  });
});
