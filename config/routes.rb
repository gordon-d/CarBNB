Rails.application.routes.draw do

  root "welcomes#index"

  resources :sessions, only: [:new, :create, :destroy]
  resources :listings, :users, :cars

  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
