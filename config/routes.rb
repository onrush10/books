Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'books#index'
  resources :books
  resources :vaccines

  get '/prueba', to: 'prueba#form'
end  
  #root 'pages#home'

  #get '/hola', to: 'pages#hola'
  #get '/books', to: 'books#index'
  #get '/home', to: 'pages#home'
