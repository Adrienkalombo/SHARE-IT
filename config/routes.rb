Rails.application.routes.draw do
  resources :quandaries

  root 'quandaries#index'


end
