Rails.application.routes.draw do
  get 'dashboard/index'

  resources :stories

  root 'dashboard#index'
end
