class MissionsController < ApplicationController
  before_action :classifications

  def index
    @missions = Mission.all.includes(:classification)
  end

  def edit
    @mission = Mission.find(params[:id])
  end

  def create
    # TODO: ModelViewへの切り出し。
    # TODO: Validationの実装
    Mission.create!(mission_params)
    redirect_to missions_url, notice: mission_manipulate_message('登録', true)
  rescue => e
    # TODO: エラー表示の追加
    render action: :new
  end

  def update
    ActiveRecord::Base.transaction do
      # TODO: ModelViewへの切り出し。
      # TODO: Validationの実装
      Mission.update!(mission_params)
      redirect_to missions_url, notice: mission_manipulate_message('更新', true)
    end
  rescue => e
    # TODO: エラー表示の追加
    render action: :edit
  end


  def destroy
    ActiveRecord::Base.transaction do
      # TODO: ModelViewへの切り出し。
      # TODO: Validationの実装
      Mission.find(params[:id])&.update!(mission_params)
      redirect_to missions_url, notice: mission_manipulate_message('削除', true)
    end
  rescue => e
    # TODO: エラー表示の追加
    render action: :index
  end

  private
    def mission_manipulate_message(manipulate, result)
      mamnipulate_message('任務マスタ', manipulate, result)
    end

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
