Rails.application.routes.draw do
  devise_for :users
  resources :quandaries

  root 'quandaries#index'


end
