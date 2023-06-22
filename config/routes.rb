Rails.application.routes.draw do
  devise_for :users
  root to: "hotels#index"
  resources :hotels do
    resource :likes, only: [:create, :destroy]
    resources :comments, only: :crete
  end
  resources :users, only: [:show] do
    member do
      get :likes
    end
  end
  
end
