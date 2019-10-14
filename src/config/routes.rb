Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/sandbox/sandbox', to: 'sandbox#index'
  post '/sandbox/sandbox/send', to: 'sandbox#create'

  get '/students/users/new', to: 'users#student_new'
  get '/companies/users/new', to: 'users#company_new'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/posts/index', to: 'posts#index'
  get '/posts/search', to: 'posts#search'
  get 'posts/list', to: 'posts#list'

  get 'companies/show', to: 'companies#show'

  resources :students
  resources :companies
  resources :account_activations, only: [:edit]
end
