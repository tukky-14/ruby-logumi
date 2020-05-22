$(function(){
  function buildHTML(comment) {
    var html = `<p>
                <a href=/users/${comment.user_id}>${comment.user_name}</a>
                ：
                ${comment.text}
                </p>`
    return html;
  }
  $('#new-comment').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data) {
      var html = buildHTML(data);
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