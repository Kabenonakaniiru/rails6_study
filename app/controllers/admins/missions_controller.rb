class Admins::MissionsController < ApplicationController
  before_action :authenticate_admin!
  before_action :classifications
  before_action :target_mission, only: [:edit, :update, :destroy]
  # TODO: このコントローラはadmin配下に移動すること。nannkamo

  def index
    @missions = Mission.all.includes(:classification)
  end

  def create
    do_transaction('登録', admins_missions_url, :index, nil) { Mission.create!(mission_params) }
  end

  def update
    do_transaction('更新', edit_admins_mission_url, :edit, nil) { @mission.update!(mission_params) }
  end

  def destroy
    do_transaction('削除', admins_missions_url, :index, @mission.name) { @mission.destroy! }
  end

  def find_mission_area
    mission = Mission.find(params[:mission_id].to_i)
    render json: mission
  end

  def mission_area_save
    # TODO: 実装
    p 'mission_area_save_通った'
    # TODO: 多分render jsonしないといけない
    'test:mission_area_save'
  end

  private
    def mission_manipulate_message(manipulate, target_name, result)
      manipulate_message('任務マスタ', manipulate, target_name, result)
    end

    def classifications
      @classifications = Classification.all
    end

    def target_mission
      @mission = Mission.find(params[:id])
    end

    def mission_params
      params.require(:mission).permit(
        :name,
        :classification_id,
        :limited,
        :url,
        :note)
    end

    def do_transaction(manipulate, success_url, error_action, target_name)
      ActiveRecord::Base.transaction do
        # TODO: ModelViewへの切り出し。
        # TODO: Validationの実装
        yield
      end
      redirect_to success_url, notice: mission_manipulate_message(manipulate, target_name, true)
    rescue => e
      logger.error(e)
      flash[:alert] = "#{mission_manipulate_message(manipulate, target_name, false)} 詳細メッセージ:[#{e.message}]"
      # FIXME: 暫定対応なので、後で消すこと。エラーになった時は、indexを通っていない……？ 渡しているActionが効いていないわけではない。
      @missions = Mission.all.includes(:classification)
      render action: error_action
    end
end
