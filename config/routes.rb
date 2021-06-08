Rails.application.routes.draw do
  post '/login', to: "users#login"
  resources :users, only: [:index, :show, :create]
  resources :reviews, only: [:create, :destroy]
  resources :shops, only: [:index]
end
