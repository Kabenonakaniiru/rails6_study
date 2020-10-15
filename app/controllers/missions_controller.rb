class MissionsController < ApplicationController
  before_action :classifications

  def index
    @missions = Mission.all.includes(:classification)
  end

  def new
    @mission = Mission.new
  end

  def create
    # TODO: ModelViewへの切り出し。
    # TODO: Validationの実装
    Mission.create!(mission_params)
  end

  private
    def classifications
      @classification = Classification.all
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
