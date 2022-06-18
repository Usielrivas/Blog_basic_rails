Rails.application.routes.draw do
  get 'users/edit'
  resources :categories
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"

  get "perfil", to: "users#edit"
  resources :users, only: [:update]
  resources :articles do
  get 'user/:user_id', to: 'articles#from_author', on: :collection
  end
  # get 'articles/new', to: 'articles#new'
  # get 'articles/:id', to: 'articles#show'
  # get 'articles/:id/edit', to: 'articles#edit'
  # patch 'articles/:id', to: 'articles#update', as: :article
  # post 'articles', to: 'articles#create'
  # delete 'articles/:id', to: 'articles#destroy'

end
