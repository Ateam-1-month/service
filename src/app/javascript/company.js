$(function() {
  $('.summary-edit').on('ajax:success', 'form', function(e) {
    console.log(e.detail[0])
    $('.company-summaries').append('<div><h3>'+e.detail[0]['title']+'</h3><p>' + e.detail[0]['content'] +'</p></div>');
  })
})