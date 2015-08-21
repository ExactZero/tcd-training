Rails.application.routes.draw do
  resources :mindset
  resources :agents
  resources :phones
  resources :contacts, only: [:new, :create]
  root to: 'visitors#new'
end
