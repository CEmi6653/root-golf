Rails.application.routes.draw do
  devise_for :users
  root to: "golfs#index"
  resources :users, only: [:edit, :update]
end
