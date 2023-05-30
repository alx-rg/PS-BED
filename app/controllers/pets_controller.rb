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
    @pet.update(pet_params)
    redirect_to @pet
    # redirect_to pet_path(@pet)
  end

  def new
    @pet = Pet.new
  end

  def create

    @pet = Pet.new(pet_params)
    @pet.save
    redirect_to @pet
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_url, status: :see_other
    # see_other is a 303 status code
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :race, :breed, :birthday, :favoriteFood, :picUrl, :price, :picUrlSq, :description, :fetch)
  end

end
