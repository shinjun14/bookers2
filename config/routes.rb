Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  get 'home/about'

  resources :books, only: [:create, :show, :index, :edit, :update, :destroy]

  resources :users, only: [:show, :create, :show, :edit, :update, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

