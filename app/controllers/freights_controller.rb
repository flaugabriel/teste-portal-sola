class FreightsController < ApplicationController
  def find_cep_and_calculate
    response = FreightService.calculation_cubage(params[:uf],params[:generator_id])
    if response.class == Hash
      render json: { response: response }
    else
      render json: { status: 401, msg: response }
    end
  end
end
