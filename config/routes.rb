Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'jobposts#index', as: 'home'
  get 'addJob' => 'jobposts#addJob', as: 'addJob'
  get 'viewJob' => 'jobposts#viewJob', as: 'viewJob'
  resources :jobposts
end