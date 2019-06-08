Rails.application.routes.draw do

  resources :posts
  get 'pages/home'
  devise_for :users
  root to: 'pages#home'
end
