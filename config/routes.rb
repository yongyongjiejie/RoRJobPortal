Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index', as: 'home'
  get 'new' => 'jobposts#new', as: 'new'
  get 'edit' => 'jobposts#edit', as: 'edit'
  get 'viewJob' => 'jobposts#index', as: 'viewJob'
  resources :jobposts
end