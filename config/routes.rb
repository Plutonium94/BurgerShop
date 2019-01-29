Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'

  resources :burgers
  resources :drinks
  resources :fries
  resources :articles
  resources :desserts

  root 'welcome#index'
end
