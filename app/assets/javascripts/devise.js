$(document).on('click', '#update-btn', function(){
  $('#edit-box').addClass('hide');
  $('#current-pwd-box').removeClass('hide');
});
$(document).on('click', '#current-pwd-box-closer', function(){
    $('#current-pwd-box').addClass('hide');
    $('#edit-box').removeClass('hide');
});