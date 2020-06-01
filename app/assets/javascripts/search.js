$(function() {

    let search_list = $('.items'); 

    function appendGummy(gummy) {
    // 【To do】画像がなかったらnoimage.pngを表示させたい
    if (gummy.image.url === null) {
      var gummyImage = `<img src="/assets/images/noimage.png" class="items__item__img">`
    } else {
      var gummyImage = `<img src="${gummy.image.url}" class="items__item__img">`
    }

    let html = `<div class="items__item">
                  <p class="items__item__title">${gummy.product}</p>
                  <a href="/gummies/${gummy.id}">
                    ${gummyImage}                  
                  </a>
                  <ul class="items__item__list">
                    <li>${gummy.created_at}</li>
                    <li>${gummy.name}</li>
                  </ul>
                </div>`
    search_list.append(html);
  }

  function appendErrMsgToHTML(msg) {
    var html = `<div class="no-search">${ msg }</div>`
    search_list.append(html);
  }

  $(".search-input").on("keyup", function() {
    var input = $(".search-input").val();
    console.log(input);
    $.ajax({
      type: 'GET',
      url: '/gummies/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(gummies) {
      console.log(gummies);
      
      search_list.empty();
      if (gummies.length !== 0) {
        gummies.forEach(function(gummy){
          appendGummy(gummy);
        });
      }
      else {
        appendErrMsgToHTML("一致するグミがありません");
      }
    })
    .fail(function() {
      alert('error');
    });
  });
});