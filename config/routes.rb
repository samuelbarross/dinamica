Rails.application.routes.draw do
  resources :materias
  resources :niveis
  resources :atividade_complementares
  resources :formacoes
  resources :coordenacao_pedagogicas
  resources :planejamento_pedagogicos
  resources :capitulos
  resources :livros
  resources :disciplinas
  resources :series
  resources :niveis
  resources :contratos
  resources :prefeituras
  resources :cidades
  resources :estados
  resources :ano_letivos
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'

  get 'docs/docs_buildnotes'
  get 'intel/intel_introduction'
  get 'intel/intel_marketing_dashboard'
  get 'page/page_inbox_general'
  get 'page/page_search'
  get 'utilities/utilities_responsive_grid'
end
