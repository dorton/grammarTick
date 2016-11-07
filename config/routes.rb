Rails.application.routes.draw do
  devise_for :users
  get 'leaderboard/index'

  resources :ticks
  resources :users

  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
