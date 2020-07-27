class PowerGeneratorsController < ApplicationController
  def index
    @q = PowerGenerator.ransack(params[:q])
    filters
  end

  # action for render json by elements that no exist in recomendations
  def recomendations
    power_generators = RecomendsService.generator_recomends(params[:data])
    if power_generators.class == Array
      render json: { recomendations: power_generators }
    else
      render :status => 404
    end
  end

  def consult_generator
    generator = PowerGenerator.find(params[:id])
    if generator.present?
      render json: { generator: generator }
    else
      render :status => 404
    end
  end

  # filters for power generators that verify on full list and with filter
  def filters
    if @q.sorts.present?
      @power_generators = @q.result.page(params[:page]).per(6)
    else
      @power_generators = @q.result.page(params[:page])
    end
  end
end
