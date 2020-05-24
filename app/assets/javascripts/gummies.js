$(function() {
  // グミホバー時発火
  // ------------------------------------
  $('.items__item').mouseover(function() {
    $(this).addClass('gummi-hover');
  }).mouseout(function() {
    $(this).removeClass("gummi-hover");
  })
});


