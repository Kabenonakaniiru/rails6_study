(function ($) {
  $(function () {
    $('.edit-row').on('click', function () {
      // とりあえず切り替えだけの処理(本当は判定文がいる) FIXME:
      $(this).removeClass('fa-edit').addClass('fa-save');
    });
  });
})(jQuery);