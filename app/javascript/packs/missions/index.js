(function ($) {
  $(function () {
    $('.edit-row').on('click', function () {
      // とりあえず切り替えだけの処理
      var $this = $(this);
      var dataIconClass;
      // if ($this.attr('data-icon') === 'edit') {
      //   dataIconClass = 'fa-edit';
      // } else {
      //   dataIconClass = 'fa-save';
      // }
      // var icon = $this.find('[data-fa-i2svg]');
      $(this).toggleClass('fa-save').toggleClass('fa-edit');
    });
  });
})(jQuery);