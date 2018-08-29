Rails.application.routes.draw do
  resources :cart_items
  devise_for :users, controllers: {sessions: 'users/sessions'}
  root 'pages#index'
  get 'pages/presentation', to: 'pages#presentation'
  get 'items/index', to: 'items#index'
  resources :items
  get 'carts/index', to: 'carts#index'
  resources :carts
  get 'orders/index', to: 'orders#index'
  resources :orders
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
