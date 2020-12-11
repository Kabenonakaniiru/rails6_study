class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :render_404
  rescue_from ActionController::RoutingError, with: :render_404
  rescue_from Exception, with: :render_500

  helper_method :logged_in?, :admin_logged_in?
  before_action :set_raven_context # TODO: 認証後のコントローラは前のコントローラと分ける。このクラスはあくまでも基底クラスとして使う, :authenticate_user!

  # 頁が見つからなかった場合。
  def render_404
    render template: 'errors/error_404', status: 404, layout: 'application', content_type: 'text/html'
  end

  # 内部エラーが発生した場合。
  def render_500
    render template: 'errors/error_500', status: 500, layout: 'application', content_type: 'text/html'
  end

  protected
    def manipulate_message(target, manipulate, target_name, result)
      p target_name
      "#{target}#{target_name.nil? ?  '' : '[' + target_name + ']'}の#{manipulate}に#{result ? '成功' : '失敗' }しました。"
    end

  private
    def logged_in?
      # see https://techracho.bpsinc.jp/hachi8833/2016_11_15/28993
      # 戻り値をtrue/falseに統一する
      current_user.present?
    end

    def admin_logged_in?
      current_admin.present?
    end

    def set_raven_context
      Raven.user_context(id: session[:current_user_id]) # or anything else in session
      Raven.extra_context(params: params.to_unsafe_h, url: request.url)
    end
end
