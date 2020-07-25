class PowerGeneratorsController < ApplicationController
  def index
    @q = PowerGenerator.ransack(params[:q])
    if @q.sorts.present?
      @power_generators = @q.result.page(params[:page]).per(6)
    else
    @power_generators = @q.result.page(params[:page])
    end
  end

  private

  def search
    require.(:power_generators).permit(:request_recomends)
  end
end
