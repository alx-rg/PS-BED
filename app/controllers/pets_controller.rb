class PetsController < ApplicationController

  def index
    @pets = Pet.search(params[:search])
  end

end
