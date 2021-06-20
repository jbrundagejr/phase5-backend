Rails.application.routes.draw do
  post '/login', to: "users#login"
  get '/keep_logged_in', to: "users#keep_logged_in"
  resources :users, only: [:index, :show, :update, :create, :destroy]
  resources :flavors, only: [:index, :show]
  resources :flavor_reviews, only: [:create, :destroy]
  resources :conversations, only: [:index, :show, :create]
  resources :messages, only: [:show, :create, :destroy]
  mount ActionCable.server => "/cable"
end
