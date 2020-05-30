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
    $('.glay_layer').slideDown(0);
    $('.delete_modal').slideDown(0);
  })
  $('#modal_back').click(function() {
    $('.glay_layer').slideUp(0);
    $('.delete_modal').slideUp(0);
  })
});


