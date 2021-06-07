Rails.application.routes.draw do
  resources :shops, only: [:index]
  resources :reviews, only: [:index]
  resources :users, only: [:index, :show]
  post '/login', to: "users#login"
end
