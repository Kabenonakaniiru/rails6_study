class MissionsController < ApplicationController
  before_action :classifications

  def index
    @missions = Mission.all.includes(:classification)
  end

  def create
    # TODO: ModelViewへの切り出し。
    # TODO: Validationの実装
    Mission.create!(mission_params)
    redirect_to missions_url, notice: '任務マスタの登録に成功しました。'
  rescue => e
    # TODO: エラー表示の追加
    render action: :new
  end

  private
    def classifications
      @classifications = Classification.all
    end

    def mission_params
      params.require(:mission).permit(
        :name,
        :classification_id,
        :limited,
        :url,
        :note)
    end
end
