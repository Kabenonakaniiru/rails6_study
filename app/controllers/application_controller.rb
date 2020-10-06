class ApplicationController < ActionController::Base
  helper_method :logged_in?
  before_action :set_raven_context # TODO: 認証後のコントローラは前のコントローラと分ける。このクラスはあくまでも基底クラスとして使う, :authenticate_user!

  private
    def logged_in?
      # FIXME: ここ、多分判定ミスっている(ログイン後にもログインボタンが表示されるので)
      # see https://techracho.bpsinc.jp/hachi8833/2016_11_15/28993
      # 戻り値をtrue/falseに統一する
      !!session[:user_id]
    end

    def set_raven_context
      Raven.user_context(id: session[:current_user_id]) # or anything else in session
      Raven.extra_context(params: params.to_unsafe_h, url: request.url)
    end
end
