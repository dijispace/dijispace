Rails.application.routes.draw do

  #get 'static_pages/home'

  #get 'static_pages/works'

  #get '/listings', to: 'listings#index'
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/works', to: 'static_pages#works'
  get '/listings', to: 'listings#index'
  #root 'listings#index'

  resources  :listings
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
