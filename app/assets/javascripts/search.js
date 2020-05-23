$(function() {

  let search_list = $('.items'); 

  // サインインしていたら編集アイコンをひょうじさせる
  function appendGummy(gummy) {
    if (gummy.user_sign_in && gummy.user_sign_in.id == gummy.user_id) {
      var current_user = `<li>
                            <a href="/gummies/${gummy.id}/edit">
                              <i class="far fa-edit icon"></i>
                            </a>
                          </li>`
    } else {
      var current_user = ""
    }

    // 画像がなかったらnoimage.pngを表示させたい
    if (gummy.image.url === null) {
      var gummyImage = `<img src="/assets/images/noimage.png" class="items__item__img">`
    } else {
      var gummyImage = `<img src="${gummy.image.url}" class="items__item__img">`
    }

    let html = `<div class="items__item">
                  <p class="items__item__title">${gummy.product}</p>
                  ${gummyImage}                  
                  <ul class="items__item__list">
                    <li>${gummy.created_at}</li>
                    ${current_user}
                    <li>
                      <a href="/gummies/${gummy.id}">
                        <i class="fas fa-info-circle icon"></i>
                      </a>
                    </li>
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