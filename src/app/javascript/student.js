$(function() {
  $('.career-edit-continer').on('ajax:success', 'form', function(e) {
    console.log(e.detail[0])
    $('.career-container').append('<div class="each-career-container"><p><span class="career-name">' + e.detail[0]['name'] + '</span><span class="career-date">' + formatDate(new Date(e.detail[0]['start_date']), 'YYYY/MM') + '~' + formatDate(new Date(e.detail[0]['end_date']), 'YYYY/MM') + '</span><span class="career-role">' + e.detail[0]['role'] + '</span><p>' + e.detail[0]['content'] + '</p></div>');
    $('.career-form').css('display', 'none');
    $('.career-history-button').css({'display': ''})
  })

  $('.career-history-button').on('click', function(){
    $(this).css('display', 'none');
    $('.career-form').css({'display': ''})
  });

  $('.career-history-button-cancel').on('click', function(){
    $('.career-form').css('display', 'none');
    $('.career-history-button').css({'display': ''})
  });


  $('.appeal-edit-continer').on('ajax:success', 'form', function(e) {
    console.log(e.detail[0])
    $('.appeal-container').append('<div class="appeal-content"><p>' + e.detail[0]['content'] + '</p></div>');
    $('.appeal-form').css('display', 'none');
    $('.appeal-history-button').css({'display': ''})
  })

  $('.appeal-history-button').on('click', function(){
    $(this).css('display', 'none');
    $('.appeal-form').css({'display': ''})
  });

  $('.appeal-history-button-cancel').on('click', function(){
    $('.appeal-form').css('display', 'none');
    $('.appeal-history-button').css({'display': ''})
  });


  $('.skill-edit-continer').on('ajax:success', 'form', function(e) {
    console.log(e.detail[0])
    var star = '';
    for (var i = 0; i < e.detail[0]['level']; i++) {
        star += '<i class="fas fa-star fa-lg"></i>'
    }
    for (var i = 0; i < (5-e.detail[0]['level']); i++) {
      star += '<i class="far fa-star fa-lg"></i>'
    }


    $('.skill-container').append('<div class="each-skill-container"><p class="each-skill-name">' + e.detail[0]['name'] + '</p><div class="each-skill"><div class="skill-stars inline-block">' + star + '</div><p class="skill-content inline-block">' +  e.detail[0]['content'] + '</p></div></div>');
    $('.skill-form').css('display', 'none');
    $('.skill-history-button').css({'display': ''});
  })

  $('.skill-history-button').on('click', function(){
    $(this).css('display', 'none');
    $('.skill-form').css({'display': ''})
  });

  $('.skill-history-button-cancel').on('click', function(){
    $('.skill-form').css('display', 'none');
    $('.skill-history-button').css({'display': ''})
  });

})


var formatDate = function (date, format) {
  if (!format) format = 'YYYY-MM-DD hh:mm:ss.SSS';
  format = format.replace(/YYYY/g, date.getFullYear());
  format = format.replace(/MM/g, ('0' + (date.getMonth() + 1)).slice(-2));
  format = format.replace(/DD/g, ('0' + date.getDate()).slice(-2));
  format = format.replace(/hh/g, ('0' + date.getHours()).slice(-2));
  format = format.replace(/mm/g, ('0' + date.getMinutes()).slice(-2));
  format = format.replace(/ss/g, ('0' + date.getSeconds()).slice(-2));
  if (format.match(/S/g)) {
    var milliSeconds = ('00' + date.getMilliseconds()).slice(-3);
    var length = format.match(/S/g).length;
    for (var i = 0; i < length; i++) format = format.replace(/S/, milliSeconds.substring(i, i + 1));
  }
  return format;
};
