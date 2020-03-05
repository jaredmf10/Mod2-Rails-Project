Rails.application.routes.draw do
  resources :appointments
  resources :pets
  resources :shelters

  root: '/login'

  

  resources :users, only: [:new, :create, :destroy]
  get '/profile', to: 'users#show' 
  
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
