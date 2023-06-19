Rails.application.routes.draw do
  # resources :articles
  # resources :users
  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Defines the root path route ("/")
  # # root "articles#index"
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  get 'signup', to: "users#new"
  resources :users, except: [:new]
  # resources :users, only: [:index, :create, :update, :delete, :show]
get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
post 'logout', to: 'sessions#destroy'

  # resources :articles, except: [:new]
  resources :articles, except: [:destroy]
end
