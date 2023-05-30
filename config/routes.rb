Rails.application.routes.draw do

  root "pets#index"
  resources :pets

  # # https://doggos.com/pets
  # # (When the user goes to this URL, the index method in the PetsController is called)
  # get "pets" => "pets#index"

  # post "pets/new" => "pets#create"

  # # https://doggos.com/pets/1
  # # (When the user goes to this URL, the show method using the :id as a parameter in the PetsController is called)
  # get "pets/:id" => "pets#show", as: "pet"

  # get "pets/:id/edit" => "pets#edit", as: "edit_pet"

  # patch "pets/:id" => "pets#update"



end
