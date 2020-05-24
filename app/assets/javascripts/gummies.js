$(function() {
// 新規登録、商品名選択時のインクリメンタルサーチ
//   $("#gummy_product").on("keyup", function() {
//     let input = $("#gummy_product").val();
//     $.ajax({ 
//       type: "GET",
//       url: "/gummies/new",
//       data: { keyword: input },
//       dataType: "json"
//     })
//     .done(function(product) {
//       console.log("成功です");
//     })
//     .fail(function() {
//       console.log("失敗です");
//     });
//   });

  // グミホバー時発火
  // ------------------------------------
  $('.items__item').mouseover(function() {
    $(this).addClass('gummi-hover');
  }).mouseout(function() {
    $(this).removeClass("gummi-hover");
  })
});


