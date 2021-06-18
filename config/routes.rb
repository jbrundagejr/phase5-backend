Rails.application.routes.draw do
  post '/login', to: "users#login"
  get '/keep_logged_in', to: "users#keep_logged_in"
  resources :users, only: [:index, :show, :update, :create, :destroy]
  resources :flavors, only: [:index, :show]
  resources :shops, only: [:index, :show]
  resources :reviews, only: [:create, :destroy]
  resources :flavor_reviews, only: [:create, :destroy]
  resources :conversations, only: [:index]
end
