class PetsController < ApplicationController

  # def index
  #   @pets = Pet.search(params[:search])
  # end

  def index
    # When the user searches for a pet, the search method in the Pet model is called
    # Pagination is also implemented here
    @pets = Pet.search(params[:search]).page(params[:page]).per(9)
  end

  def show
    # When the user clicks on a pet, the show method in the Pet model is called
    @pet = Pet.find(params[:id])
  end

  def edit
    # When the user clicks edit on a pet, the edit method in the Pet model is called
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    pet_params =
      params.require(:pet).
        permit(:name, :race, :breed, :birthday, :favoriteFood, :picUrl, :price, :picUrlSq, :description, :fetch)
    @pet.update(pet_params)
    redirect_to @pet
    # redict_to pet_path(@pet)
  end

end
