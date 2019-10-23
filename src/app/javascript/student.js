$(function() {
  $('.career-edit-continer').on('ajax:success', 'form', function(e) {
    console.log(e.detail[0])
    $('.career-container').append('<div><p>' + e.detail[0]['name'] + '</p><p>' + e.detail[0]['start_date'] + '</p><p>' + e.detail[0]['end_date'] + '</p><p>' + e.detail[0]['role'] + '</p><p>' + e.detail[0]['content'] + '</p></div>');
    $('.career-form').css('display', 'none');
    $('.career-history-button').css({'display': ''})
  })

  $('.career-history-button').on('click', function(){
    $(this).css('display', 'none');
    $('.career-form').css({'display': '', 'background-color': 'red' })
  });

  $('.career-history-button-cancel').on('click', function(){
    $('.career-form').css('display', 'none');
    $('.career-history-button').css({'display': ''})
  });


  $('.appeal-edit-continer').on('ajax:success', 'form', function(e) {
    console.log(e.detail[0])
    $('.appeal-container').append('<div><p>' + e.detail[0]['content'] + '</p></div>');
    $('.appeal-form').css('display', 'none');
    $('.appeal-history-button').css({'display': ''})
  })

  $('.appeal-history-button').on('click', function(){
    $(this).css('display', 'none');
    $('.appeal-form').css({'display': '', 'background-color': 'red' })
  });

  $('.skill-history-button-cancel').on('click', function(){
    $('.skill-form').css('display', 'none');
    $('.skill-history-button').css({'display': ''})
  });


  $('.skill-edit-continer').on('ajax:success', 'form', function(e) {
    console.log(e.detail[0])
    var star = '';
    for (var i = 0; i < e.detail[0]['level']; i++) {
        star += '<i class="fas fa-star"></i>'
    }
    for (var i = 0; i < (5-e.detail[0]['level']); i++) {
      star += '<i class="far fa-star"></i>'
    }


    $('.skill-container').append('<div class="aa"><p>' + e.detail[0]['name'] + '</p><div><div>' + star + '</div><p>' +  e.detail[0]['content'] + '</p></div></div>');
    $('.skill-form').css('display', 'none');
    $('.skill-history-button').css({'display': ''});
    $('.aa').addClass('each-skill-container')
  })

  $('.skill-history-button').on('click', function(){
    $(this).css('display', 'none');
    $('.skill-form').css({'display': '', 'background-color': 'red' })
  });

  $('.skill-history-button-cancel').on('click', function(){
    $('.skill-form').css('display', 'none');
    $('.skill-history-button').css({'display': ''});
  });

})
