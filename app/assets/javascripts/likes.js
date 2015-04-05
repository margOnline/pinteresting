$(document).ready(function () {
  $('.like-pin').on('click', function(e){
    e.preventDefault();

    var likeCount = $(this).parent.prevSibling('.likes_count');

    $.post(this.href, function(response){
      likeCount.text(response.new_likes_count);
    });
    $(this).hide();
  });
});
