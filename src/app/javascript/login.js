$(function(){
    $('.login-modal-show').on('click',function(){
        $('.login-modal-container').removeClass('modal-hidden');
        $('.student-contents').addClass('blur');
        $('.header-container').addClass('blur');
        $('.footer').addClass('blur');
    });
    $('.login-cancel').on('click',function(){
        $('.login-modal-container').addClass('modal-hidden');
        $('.student-contents').removeClass('blur');
        $('.header-container').removeClass('blur');
        $('.footer').removeClass('blur');
    });
    $(window).scroll(function() {
        $('.alert-success').addClass('modal-hidden');
    });
});