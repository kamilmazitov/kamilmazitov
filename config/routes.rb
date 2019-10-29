Rails.application.routes.draw do
  devise_for :users
  get 'dashboard/index'

  resources :stories

  root 'dashboard#index'
end
