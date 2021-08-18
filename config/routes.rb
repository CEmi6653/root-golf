Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :users, only: [:edit, :update]
  resources :tweets, only: [:index, :show]
    namespace :admin do
      resources :tweets, only: [:index, :new, :create, :show, :destroy]
    end
end
