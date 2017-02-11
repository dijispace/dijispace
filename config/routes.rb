Rails.application.routes.draw do
  get 'users/index'

  #get '/listings', to: 'listings#index'
  root 'listings#index'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create' 
  resources  :listings
  resources  :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
