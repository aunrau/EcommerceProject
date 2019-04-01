Rails.application.routes.draw do
  resources :pages
  devise_for :customers
   devise_scope :customer do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :orders
  # resources :customers
  resources :products
  resources :search
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  get 'static/:permalink', to: 'pages#static', as: 'static'
  get 'search_results', to: 'search#results', as: 'search_results'

  post 'carts/checkout' => 'carts#create'

  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
