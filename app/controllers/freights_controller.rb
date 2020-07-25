class FreightsController < ApplicationController
  def find_cep_and_calculate
    byebug
    address = Correios::CEP::AddressFinder.get(params[:cep])
    byebug
    generator = PowerGenerator.find(params[:generator_id])
    freight_find = Freight.where(state: address.state)
  end
end
