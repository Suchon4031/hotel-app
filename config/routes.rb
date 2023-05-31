Rails.application.routes.draw do
  devise_for :users
  root to: "hotels#index"
  resources :users, only: [:show]
  resources :hotels
end
