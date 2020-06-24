$(function(){
  function buildHTML(comment) {
    const html = `<p class="comments__field__text">
                <a href=/users/${comment.user_id}>${comment.user_name}</a>
                ：
                ${comment.text}
                </p>`
    return html;
  }
  $('#new-comment').on('submit', function(e){
    e.preventDefault();
    const formData = new FormData(this);
    const url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data) {
      const html = buildHTML(data);
      $('.comments__field').append(html);
      $('.comment-form__text').val('');
      $('.comment-form__btn').prop('disabled', false);
    })
    .fail(function() {
      alert('エラーが発生しました')
      $('.comment-form__btn').prop('disabled', false);
    })
  })
})