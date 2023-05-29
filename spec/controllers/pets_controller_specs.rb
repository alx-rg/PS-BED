# spec/controllers/pets_controller_spec.rb

require 'rails_helper'

RSpec.describe PetsController, type: :controller do
  before(:all) do
    @pet1 = Pet.create(name: "Moose Doodle", race: "Dog", breed: "Golden Doodle", favoriteFood: "Raw Meat", description: "The best doggo")
    @pet2 = Pet.create(name: "Buddy", race: "Dog", breed: "Labrador Retriever", favoriteFood: "Kibble", description: "A friendly dog")
    @pet3 = Pet.create(name: "Buddy", race: "Dog", breed: "Labrador Retriever", favoriteFood: "Kibble", description: "A friendly dog")
    @pet4 = Pet.create(name: "Buddy", race: "Dog", breed: "Labrador Retriever", favoriteFood: "Kibble", description: "A friendly dog")
    @pet5 = Pet.create(name: "Buddy", race: "Dog", breed: "Labrador Retriever", favoriteFood: "Kibble", description: "A friendly dog")
    @pet6 = Pet.create(name: "Buddy", race: "Dog", breed: "Labrador Retriever", favoriteFood: "Kibble", description: "A friendly dog")
    @pet7 = Pet.create(name: "Buddy", race: "Dog", breed: "Labrador Retriever", favoriteFood: "Kibble", description: "A friendly dog")
    @pet8 = Pet.create(name: "Buddy", race: "Dog", breed: "Labrador Retriever", favoriteFood: "Kibble", description: "A friendly dog")
    @pet9 = Pet.create(name: "Buddy", race: "Dog", breed: "Labrador Retriever", favoriteFood: "Kibble", description: "A friendly dog")
    @pet10 = Pet.create(name: "Buddy", race: "Dog", breed: "Labrador Retriever", favoriteFood: "Kibble", description: "A friendly dog")

  end

  after(:all) do
    Pet.destroy_all
  end

  describe "GET #index" do
    it 'sets up @pets with paginated results' do
      get :index, params: { page: 1 }
      expect(response).to be_successful
      expect(assigns(:pets)).not_to be_nil
      expect(assigns(:pets).count).to eq(9) # Check that 9 pets are displayed on the first page

      # Test that there are more pets in the database than displayed on the first page
      expect(Pet.count).to be > 9
    end
  end

end
