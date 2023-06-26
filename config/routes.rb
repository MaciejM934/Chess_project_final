Rails.application.routes.draw do
  get 'session/new'
  resources :boards
  resources :players
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static#index"
  get    '/login',   to: 'session#new'
  post   '/login',   to: 'session#create'
  get '/logout',  to: 'session#destroy'
end
