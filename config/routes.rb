Rails.application.routes.draw do
  devise_for :users
  root 'products#index'

  resources :users, only: [:show]
  resources :products do
    resources :reviews, only: [:new, :create]
  end
end
