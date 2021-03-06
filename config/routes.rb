Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  get 'home/about'

  get '/search', to: 'searches#search'

  resources :books, only: [:create, :show, :index, :edit, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :create, :show, :edit, :update, :index] do
      resource :relationships, only: [:create, :destroy, ]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

