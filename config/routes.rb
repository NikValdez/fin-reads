Rails.application.routes.draw do
  
  resources :contacts, only: [:new, :create]

  root 'links#index'
end
