Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :post, only: %i(new create edit update destroy show)
  resources :users, only: %i(show)
end
