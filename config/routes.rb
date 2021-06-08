Rails.application.routes.draw do
  post '/login', to: "users#login"
  get '/keep_logged_in', to: "users#keep_logged_in"
  resources :users, only: [:index, :show, :create]
  resources :reviews, only: [:create, :destroy]
  resources :shops, only: [:index]
  resources :conversations, only: [:index]
  resources :messages, only: [:create, :destroy]
end
