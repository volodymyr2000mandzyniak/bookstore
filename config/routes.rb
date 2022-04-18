Rails.application.routes.draw do
  devise_for :users
  root 'books#index'
  resources :books, only: [:show, :index]
  resources :tags, only: [:show]
  resources :categories, only: [:show]

  namespace :admin do 
    resources :books, except: [:show, :index]
    resources :categories, except: [:show]
  end  
end
