Rails.application.routes.draw do
  devise_for :users
  root 'products#index'

  resources :users, only: [:show]
  resources :products
end
