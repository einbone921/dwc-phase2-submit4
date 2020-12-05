Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users, only: [:show,:index,:edit,:update] do
    member do
      get :followings, :followers
    end
  end
  resources :books
  resources :relationships, only: [:create, :destroy]
end
