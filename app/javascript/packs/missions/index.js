(function ($) {
  $(function () {
    $('.edit-row-icon').on('click', function () {
      // とりあえず切り替えだけの処理
      $(this)
        .find('[data-fa-i2svg]')
        .toggleClass('fa-edit')
        .toggleClass('fa-save');
    });
  });
})(jQuery);