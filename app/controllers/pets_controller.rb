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
    if @pet.update(pet_params)
      redirect_to @pet, notice: "Pet was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @pet = Pet.new
  end

  # def create
  #   @pet = Pet.new(pet_params)
  #   if @pet.save
  #     redirect_to @pet, notice: "Pet was successfully created."
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  def create
    @pet = Pet.new(pet_params)

    # Upload the image to Cloudinary and get the secure_url
    image_url = upload_image(params[:pet][:image])

    # Assign the image_url to the @pet instance
    @pet.picUrlSq = image_url

    if @pet.save
      redirect_to @pet, notice: "Pet was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def upload_image(image)
    response = Cloudinary::Uploader.upload(image.path)
    response["secure_url"]
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_url, status: :see_other, alert: "Pet was successfully deleted."
    # see_other is a 303 status code
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :race, :breed, :birthday, :favoriteFood, :picUrl, :price, :picUrlSq, :description, :fetch, :image)
  end

end
