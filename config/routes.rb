Rails.application.routes.draw do
  devise_for :users
  root to: 'works#index'
  # resources :works
  get 'home/index'
  # resources :directers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :directers, only: [:index, :show]
  resources :works, only: [:index, :show]
  
  namespace :login do
    resources :directers, only: [:new, :create, :edit, :update, :destroy]
    resources :works, only: [:new, :create, :edit, :update, :destroy]
  end
end
