Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Home controller
  root 'home#index', as: 'home'

  #Job Posts controller
  get 'new' => 'jobposts#new', as: 'new'
  get 'edit' => 'jobposts#edit', as: 'edit'
  get 'viewJob' => 'jobposts#index', as: 'viewJob'
  resources :jobposts

  #User Controller
  resources :users, only: [:new, :create]
  get 'register', to: 'users#new'

  #Session Controller
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#logout'
  get 'authorized', to: 'sessions#page_requires_login'
end