Rails.application.routes.draw do
  resources :orders
  resources :customers
  resources :products

  get 'search_results', to: 'search#results', as: 'search_results'

  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
