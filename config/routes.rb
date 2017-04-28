Rails.application.routes.draw do
  root to: 'home#index'
  get 'home' => 'users#home'

  # resources :sessions, only: [:new, :create, :destroy]
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  resources :users
  get 'settings' => 'users#settings'

  resources :themes
  get 'select_themes' => 'themes#select_themes'
  post 'follow' => 'themes#follow'
  post 'unfollow' => 'themes#unfollow'

  resources :dojos, only: [:new, :create]
end
