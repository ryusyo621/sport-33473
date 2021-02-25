Rails.application.routes.draw do
  devise_for :users
  root to: "sports#index"
  resources :sports do
    resources :messages, only: :create
  end
end
