class MissionsController < ApplicationController
  before_action :classifications

  def new
    @mission = Mission.new
  end

  private
    def classifications
      @classification = Classification.all
    end
end
