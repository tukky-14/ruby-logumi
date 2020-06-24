$(function() {
  $('#modal').click(function() {
    $('.glay_layer').slideDown(0);
    $('.delete_modal').slideDown(0);
  })
  $('#modal_back').click(function() {
    $('.glay_layer').slideUp(0);
    $('.delete_modal').slideUp(0);
  })
});

