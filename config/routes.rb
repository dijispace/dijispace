Rails.application.routes.draw do

  #get 'workspaces/index'

  #get 'workspaces/new'

  #get 'workspaces/show'

  #get 'spaces/new'

  #get 'host_session/new'

  #get 'hosts/index'

  #get 'single_listing/index'

  #get 'static_pages/home'

  #get 'static_pages/works'

  #get '/listings', to: 'listings#index'
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'

  #get '/works', to: 'static_pages#works'
  
  #get '/listings', to: 'listings#index'
  #get '/single' , to: 'listings#show'
  
  
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  
  get '/signuphost', to: 'hosts#new'
  post '/signuphost', to: 'hosts#create'

  
  get '/singlelist', to: 'single_listing#index'
  
  
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'

  
  get '/loginhost', to: 'host_session#new'
  post '/loginhost', to: 'host_session#create'
  delete '/logouthost', to: 'host_session#destroy'
  
  get 'list' , to: 'workspaces#new'
  post 'list', to: 'workspaces#create'
  get 'search', to: 'workspaces#index'
  

  #root 'listings#index'

  resources  :listings
  resources  :users
  resources  :single_listing 
  resources  :hosts
  resources  :workspaces

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
