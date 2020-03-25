Rails.application.routes.draw do
  resources :appointments
  resources :pets
  resources :shelters
  resources :users


  get "/Manhattan", to: "shelters#Manhattan"
  get "/Brooklyn", to: "shelters#Brooklyn"
  get "/Bronx", to: "shelters#Bronx"
  get "/Queens", to: "shelters#Queens"
  post "/appointments/new", to: "appointments#new"
  post "/appointments/edit", to: "appointments#edit"

  resources :users, only: [:new, :create, :destroy]
  get '/profile', to: 'users#show' 

  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/appointments/new', to: 'appointments#new'
end
