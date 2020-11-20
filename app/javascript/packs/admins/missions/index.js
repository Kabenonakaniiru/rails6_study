(function ($) {
  $(function () {
    // FIXME: 関数名は適当。後で共通的なハンドリング用のクラスなどを作ること。(ただし、Vue.jsへの置き換えを行ってから)
    var commonJsonAjax = function (url, method, dataMap, successFunc, errorFunc) {
      $.ajax(
        url,
        {
          type: method,
          data: dataMap,
          dataType: 'json',
          beforeSend: function (xhr, setting) {
            // TODO: ここにLoadingアイコンを表示する処理を設定。※非表示にする処理も作成が必要。
          }
        }).done(function (data) {
          successFunc(data);
        }).fail(function () {
          // FIXME: ここ引数を精査。
          errorFunc();
        });
    };
    // TODO: 後で適切な引数名に変更すること。更新とそうでないときの処理を分けること。
    var toggleRow = function ($this, data) {
      // テキストフィールドとラベル表示を切り替える FIXME: あとでいいコメント考えてくだしあ
      // this = i → row取得→配下tdの特定クラスを切りかえる
      var row = $this.parent().parent();
      // edit→saveアイコンに切り替えるとき、行配下のセルを編集可能にする。
      row.children('.mission-count-area').each(function (index, td) {
        var $td = $(td);
        $td.find('.mission-count-display-cell').toggleClass('d-none');
        $td.find('.mission-count-editor').toggleClass('d-none');
      });
    }
    $('.edit-row-icon').on('click', function () {
      // 「編集」列のアイコンをクリックしたときの処理
      var $this = $(this);
      var dataFaI2Svg = $this.find('[data-fa-i2svg]');
      dataFaI2Svg.toggleClass('fa-edit')
        .toggleClass('fa-save');
      if (dataFaI2Svg.hasClass('fa-edit')) {
        // TODO: ここに保存時の動作追加
        toggleRow($this);
      } else {
        // TODO: ここに編集時の動作追加
        var url = $this.parent().find(".row_get_link").attr('href');
        // TODO: 共通化
        commonJsonAjax(url, 'get', {}, function (data) {
          toggleRow($this, data);
        }, function () {
          // TODO: 実装
        });
      }
    });
  });
})(jQuery);