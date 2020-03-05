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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
