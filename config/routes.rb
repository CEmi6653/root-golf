Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :users, only: [:edit, :update]
  resources :tweets, only: [:index, :show] do
    resources :reviews, only: [:create, :destroy]
    post 'add' => 'favorites#create'
    delete '/add' => 'favorites#destroy'
  end
    namespace :admin do
      resources :tweets
    end
    
end
