Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  get 'homes/about'

  resources :books, only: [:create, :show, :index, :edit, :destroy]

  resources :users, only: [:show, :create, :show, :edit, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

