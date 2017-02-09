Rails.application.routes.draw do
  #get '/listings', to: 'listings#index'
  root 'listings#index'
  resources  :listings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
