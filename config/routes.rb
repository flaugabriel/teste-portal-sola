# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'power_generators#index'
  resources :home, only: %i[index]
  post 'recomendations/', to: 'power_generators#recomendations'
  get 'consult_generator/:id', to: 'power_generators#consult_generator'
  post 'find_cep_and_calculate/', to: 'freights#find_cep_and_calculate'
end
