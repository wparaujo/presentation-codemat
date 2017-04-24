Rails.application.routes.draw do
  root to: 'home#index'
  get 'home' => 'users#home'

  # resources :sessions, only: [:new, :create, :destroy]
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  resources :users
  resources :dojos, only: [:new, :create]
  resources :themes
end
