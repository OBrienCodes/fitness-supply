Rails.application.routes.draw do
  
  resources :productreviews, only: [:index, :create, :destroy]
  resources :reviews, only: [:index, :create, :destroy]
  resources :workouts, only: [:index]
  resources :users, only: [:index, :show, :create]
  resources :products, only: [:index]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
