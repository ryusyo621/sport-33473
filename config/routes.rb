Rails.application.routes.draw do
  devise_for :users
  get 'sports/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'sports#index'
  resources :sports, only: [:index, :new, :create, :edit, :update]
end
