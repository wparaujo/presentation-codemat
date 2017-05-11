Rails.application.routes.draw do
  root to: 'home#index'
  get 'home' => 'users#home'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  get 'select_themes' => 'themes#select_themes'
  post 'follow' => 'themes#follow'
  post 'unfollow' => 'themes#unfollow'

  # get 'near_dojos' => 'dojos#near_dojos'

  # Dashboard
  get 'near_dojos' => 'dashboard#near_dojos'
  get 'theme_dojos' => 'dashboard#theme_dojos'
  get 'dojo' => 'dashboard#dojo'

  resources :videos
  resources :users
  resources :dojos, only: [:new, :create, :index]
  resources :themes
  resources :locations
end
