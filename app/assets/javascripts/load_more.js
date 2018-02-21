$( document ).on('turbolinks:load', function() {
    $('.blog-link:gt(11)').hide();
    $('#show-more-blog').click(function() {
        $('.blog-link:gt(11)').show();
        $('#show-more-blog').hide();
    });
  });

  $( document ).on('turbolinks:load', function() {
      $('.paper-link:gt(11)').hide();
      $('#show-more-paper').click(function() {
          $('.paper-link:gt(11)').show();
          $('#show-more-paper').hide();
      });
    });

  $( document ).on('turbolinks:load', function() {
      $('.podcast-link:gt(11)').hide();
      $('#show-more-podcast').click(function() {
          $('.podcast-link:gt(11)').show();
          $('#show-more-podcast').hide();
      });
    });

    $( document ).on('turbolinks:load', function() {
        $('.quant-link:gt(11)').hide();
        $('#show-more-quant').click(function() {
            $('.quant-link:gt(11)').show();
            $('#show-more-quant').hide();
        });
      });
