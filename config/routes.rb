Rails.application.routes.draw do
  get 'users/new', to: "users#new", as: "new_user"
  post '/users', to: "users#create", as: "create_user"
  
  get 'login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  
  delete '/logout', to: "session#destroy", as: "logout"
  
  resources :lawyers
  resources :clients
  resources :cases
end
