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
  get '/posts/new', to: 'posts#new'
  get '/posts/list', to: 'posts#list'
  get '/posts/management/:id', to: 'posts#management'
  get '/posts/:id', to: 'posts#show'
  post '/posts', to: 'posts#update'
  get '/posts/:id/edit', to: 'posts#edit'
  post '/posts/:id', to: 'posts#update'

  post 'apply', to: 'applies#create'

  get '/companies/home', to: 'companies#home'

  # ダミーページルーティング
  get '/students/top', to: 'students#top'
  get '/companies/mail', to: 'companies#mail'
  get '/companies/message', to: 'companies#message'

  resources :students
  resources :companies
  resources :careers, only: [:create]
  resources :summaries, only: [:new, :create]
  resources :account_activations, only: [:edit]
end
