Rails.application.routes.draw do
  resources :line_items
  devise_for :users, controllers: {sessions: 'users/sessions'}
  root 'pages#index'
  get 'pages/presentation', to: 'pages#presentation'
  get 'items/index', to: 'items#index'
  resources :items

  resources :carts

  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
