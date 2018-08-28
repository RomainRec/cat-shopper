Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions'}
  root 'pages#index'
  get 'items/index', to: 'items#index'
  resource :items
  get 'carts/index', to: 'carts#index'
  resource :carts
  get 'orders/index', to: 'orders#index'
  resource :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
