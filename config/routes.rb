Rails.application.routes.draw do
  resources :posts
  root "posts#index"

  resources :users
  get '/signup' => 'users#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :products
end
