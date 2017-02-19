Rails.application.routes.draw do
  
  root 'static_pages#home'
 
  resources :hosts do 
   resources :workspaces
  end 

  resources  :users

  resources  :workspaces

  
  #Routes for creating(listing)/searching for workspace 
  get 'list' , to: 'workspaces#new'
  post 'list', to: 'workspaces#create'
  get 'search', to: 'workspaces#index'
   

  #User Signup routes
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  
  #Host Signup routes
  get '/signuphost', to: 'hosts#new'
  post '/signuphost', to: 'hosts#create'
  

  #User Login routes
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'

  #Host Login routes
  get '/loginhost', to: 'host_session#new'
  post '/loginhost', to: 'host_session#create'
  delete '/logouthost', to: 'host_session#destroy'
  
  #Static pages routes
  get '/home', to: 'static_pages#home'
  get '/works', to: 'static_pages#works'

  
  
  

  

  #resources  :listings
  
  #resources  :hosts 
  
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
