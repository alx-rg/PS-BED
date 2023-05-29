class PetsController < ApplicationController

  # def index
  #   @pets = Pet.search(params[:search])
  # end

  def index
    @pets = Pet.search(params[:search]).page(params[:page]).per(9)
  end

  # def index
  #   @pets = Pet.search(params[:search]).paginate(page: params[:page], per_page: 9)
  # end

end
