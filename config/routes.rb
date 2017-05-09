Rails.application.routes.draw do
  # get 'video/new'

  #get 'dojo_creator/dojoFactory'

  root to: 'home#index'

  # resources :sessions, only: [:new, :create, :destroy]
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  # get 'new_stream' => 'videos#index'
  resources :videos

  resources :users
  resources :dojos, only: [:new, :create, :index]

end
