Rails.application.routes.draw do
  root 'pages#index'
  resources :orders
  resources :cart_items
  resources :line_items
  devise_for :users, controllers: {sessions: 'users/sessions'}
  get 'pages/presentation', to: 'pages#presentation'
  get 'items/index', to: 'items#index'
  resources :items
  resources :carts
  get 'orders/index', to: 'orders#index'
  resources :charges
  get 'line_items/delete', to: 'line_items#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
