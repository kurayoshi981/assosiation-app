Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :users, only: %i(show)
  resources :post, only: %i(new create edit update destroy show) do
    resources :comments
  end
end
