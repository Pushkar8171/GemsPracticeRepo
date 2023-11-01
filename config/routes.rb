
require 'sidekiq/web'
Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  namespace :admin do
      resources :posts
      resources :users

      root to: "posts#index"
    end
  
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "posts#index"
  devise_for :users
end
