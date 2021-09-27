Rails.application.routes.draw do
  resources :cities
  resources :listings
  resources :neighborhoods
  resources :users
end
