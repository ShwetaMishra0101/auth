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
  resources :articles, except: [:new]
end
