Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]
  root to: 'visitors#new'

  get 'signup'  => 'users#new' 
  resources :users
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  
end
