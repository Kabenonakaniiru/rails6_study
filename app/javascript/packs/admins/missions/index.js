(function ($) {
  $(function () {
    $('.edit-row-icon').on('click', function () {
      // とりあえず切り替えだけの処理
      var $this = $(this);
      var dataFaI2Svg = $this.find('[data-fa-i2svg]');
      dataFaI2Svg.toggleClass('fa-edit')
        .toggleClass('fa-save');
      // テキストフィールドとラベル表示を切り替える FIXME: あとでいいコメント考えてくだしあ
      // this = i → row取得→配下tdの特定クラスを切りかえる
      var row = $this.parent().parent();
      // edit→saveアイコンに切り替えるとき、行配下のセルを編集可能にする。
      row.children('.mission-count-area').each(function (index, td) {
        var $td = $(td);
        $td.find('.mission-count-display-cell').toggleClass('d-none');
        $td.find('.mission-count-editor').toggleClass('d-none');
      });
      if (dataFaI2Svg.hasClass('fa-edit')) {
        // TODO: ここに保存時の動作追加
        alert($this.parent().find(".row_get_link").attr('href'));
        var url = $this.parent().find(".row_get_link").attr('href');
        $.ajax(
          url,
          {
            type: 'get',
            data: { 'test': 'test_data' },
            dataType: 'json'
          }
        ).done(function (data) {
          alert(data);
        }).fail(function () {
          alert("error");
        });
        //   dataFaI2Svg.,
        //   {
        //     type: 'get',
        //     data: { query: $('#keyword').val() },
        //     dataType: 'xml'
        //   }
        // )
      } else {
        // TODO: ここに編集時の動作追加
        // $.ajax();
      }
    });
  });
})(jQuery);