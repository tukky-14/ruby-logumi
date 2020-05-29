$(function() {
  // グミホバー時発火
  // ------------------------------------
  $('.items__item').mouseover(function() {
    $(this).addClass('gummi-hover');
  }).mouseout(function() {
    $(this).removeClass("gummi-hover");
  })

  // グミ削除時モーダル
  // ------------------------------------
  $('#modal').click(function() {
    $('.glay_layer').slideDown();
    $('.delete_modal').slideDown();
  })
  $('#modal_back').click(function() {
    $('.glay_layer').slideUp();
    $('.delete_modal').slideUp();
  })
});


