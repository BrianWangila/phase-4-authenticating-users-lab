Rails.application.routes.draw do
  # resources :sessions, only: [:create, :destroy]
  resources :articles, only: [:index, :show]

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#delete"

  get "/me", to: "users#show"
 
end
