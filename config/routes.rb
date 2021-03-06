Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :users, only: [:show, :edit, :update]
  resources :tweets, only: [:index, :show] do
    collection do
      get 'search'
    end
    resources :reviews, only: [:create, :destroy]
    post 'add' => 'favorites#create'
    delete '/add' => 'favorites#destroy'
  end
    namespace :admin do
      resources :tweets
    end
    
end
