Rails.application.routes.draw do
  get '/' => 'home#index', :as => 'home'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :books
  get '/users/delete/:id', to: 'users#delete', as: 'user_delete'
  get '/books/delete/:id', to: 'books#delete', as: 'book_delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end