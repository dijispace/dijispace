Rails.application.routes.draw do

  #get 'static_pages/home'

  #get 'static_pages/works'

  #get '/listings', to: 'listings#index'
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/works', to: 'static_pages#works'
  get '/listings', to: 'listings#index'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  #root 'listings#index'

  resources  :listings
  resources  :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
