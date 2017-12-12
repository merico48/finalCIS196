Rails.application.routes.draw do
  resources :orders
  resources :items
  resources :cards
  resources :users
  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'
  resources :welcome
  resources :users

  get '/cart', to: 'users#cart'
  post '/cart/:item_id', to: 'users#addcart'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
