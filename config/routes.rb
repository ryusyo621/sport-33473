Rails.application.routes.draw do
  devise_for :users
  root to: 'sports#index'
  resources :users, only: [:new, :create]
  resources :sports, only: [:index, :new, :create, :edit, :update]
end
