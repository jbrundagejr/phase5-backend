Rails.application.routes.draw do
  resources :messages
  resources :conversations
  resources :flavors
  resources :reviews
  resources :shops
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
