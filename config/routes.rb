Rails.application.routes.draw do
  devise_for :users
  root to: 'sports#index'
  resources :sports, only: [:index, :new, :create, :edit, :update]
end
