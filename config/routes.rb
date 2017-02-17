Rails.application.routes.draw do
  
  root 'static_pages#home'
 
  resources :hosts do 
   resources :workspaces
  end 

  get 'list' , to: 'workspaces#new'
  post 'list', to: 'workspaces#create'
  get 'search', to: 'workspaces#index'
  #get 'singlelisting', to: 'workspaces#show' 


  
  
  
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'

  
  get '/loginhost', to: 'host_session#new'
  post '/loginhost', to: 'host_session#create'
  delete '/logouthost', to: 'host_session#destroy'
  
  get '/home', to: 'static_pages#home'
  #get 'payment', to: 'static#pay'
  get '/works', to: 'static_pages#works'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/signuphost', to: 'hosts#new'
  post '/signuphost', to: 'hosts#create'
  

  

  #resources  :listings
  resources  :users
  #resources  :hosts 
  resources  :workspaces
  
  #root 'listings#index'
  #get '/listings', to: 'listings#index'
  #get '/single' , to: 'listings#show'
  #get '/listings', to: 'listings#index'
  #get '/singlelist', to: 'single_listing#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
