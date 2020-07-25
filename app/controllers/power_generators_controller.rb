class PowerGeneratorsController < ApplicationController
  def index
    @power_generators = PowerGenerator.all
  end

  private

  def search
    require.(:power_generators).permit(:request_recomends )
  end
end
