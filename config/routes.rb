Rails.application.routes.draw do

  root "pets#index"
  resources :pets
  resources :payments

  post '/webhooks', to: 'webhooks#create'

end
