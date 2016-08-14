Rails.application.routes.draw do

  get 'store/index'

  resources :catalogo_usuarios
  get 'us/index'

  resources :catalogs
  resources :products
  resources :proveedors
  resources :employees
  resources :store
  root "static#main"

  #root "employees#index"

  get '/employee' => "employees#index"

  get '/main' => "static#main"
  get '/user' => "static#user"

  get "/signup" => "users#new"
  post "/signup" => "users#create"

  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  delete '/logout' => "sessions#destroy"

  resources :users
end
