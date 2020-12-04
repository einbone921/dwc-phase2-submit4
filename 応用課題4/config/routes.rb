Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users, only: [:show,:index,:edit,:update] do
    get :following, :followers
  end
  resources :books
  resources :relationships, only: [:create, :destroy]
end
