$(function() {
  $('.career-edit-continer').on('ajax:success', 'form', function(e) {
    console.log(e.detail[0])
    $('.career-container').append('<div><p>' + e.detail[0]['name'] + '</p><p>' + e.detail[0]['start_date'] + '</p><p>' + e.detail[0]['end_date'] + '</p><p>' + e.detail[0]['role'] + '</p><p>' + e.detail[0]['content'] + '</p></div>');
    $('.career-form').css('display', 'none');
    $('.history-button').css({'display': ''})
  })

  $('.history-button').on('click', function(){
    $(this).css('display', 'none');
    $('.career-form').css({'display': '', 'background-color': 'red' })
  });

  $('.history-button-cancel').on('click', function(){
    $('.career-form').css('display', 'none');
    $('.history-button').css({'display': ''})
  });
})
