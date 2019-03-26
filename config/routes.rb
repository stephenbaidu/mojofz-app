Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  require 'sidekiq/web'
  require 'sidekiq/cron/web'
  mount Sidekiq::Web => '/sidekiq'

  root 'home#index'
  get '/profit_evolution', to: 'home#profit_evolution'

  resources :orders, only: :index
  resources :customers, only: :index
  resources :products, only: :index
end
