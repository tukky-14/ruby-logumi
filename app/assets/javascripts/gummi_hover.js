$(function() {
  $('.items__item').mouseover(function() {
    $(this).addClass('gummi-hover');
  }).mouseout(function() {
    $(this).removeClass("gummi-hover");
  })

  $('.useritems__list__item').mouseover(function() {
    $(this).addClass('gummi-hover');
  }).mouseout(function() {
    $(this).removeClass("gummi-hover");
  })
});