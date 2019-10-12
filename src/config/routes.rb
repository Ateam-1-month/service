Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/sandbox/sandbox', to: 'sandbox#index'
  post '/sandbox/sandbox/send', to: 'sandbox#create'

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/posts/index', to: 'posts#index'

  resources :account_activations, only: [:edit]
end
