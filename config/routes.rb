Rails.application.routes.draw do
  devise_for :users
  resources :users, only:[:edit, :update]
  resources :rooms, only:[:new, :create, :index]
  get 'messages/index'
  root to: "rooms#index"
end
