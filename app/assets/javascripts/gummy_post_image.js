$(function(){
  $('#form__list__image').change(function(){
    const file = $('input[type="file"]').prop('files')[0];
    const fileReader = new FileReader();
    fileReader.onloadend = function() {
      const src = fileReader.result
      const html= `<div>
                  <img src="${src}" class="form__image__preview">
                  <p class="form__image__delete">削除</p>
                  </div>`
      $('.form__image').append(html);
    }
    fileReader.readAsDataURL(file);
  });

  $('.form__image').on("click", '.form__image__delete', function(){
    const target_image = $(this).parent()
    target_image.remove();
    $('#form__list__image').val("");
  })
});