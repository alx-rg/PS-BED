# spec/models/pet_spec.rb

require 'rails_helper'

RSpec.describe Pet, type: :model do
  before(:all) do
    @pet1 = Pet.create(name: "Moose Doodle", race: "Dog", breed: "Golden Doodle", favoriteFood: "Raw Meat", description: "The best doggo")
    @pet2 = Pet.create(name: "Buddy", race: "Dog", breed: "Labrador Retriever", favoriteFood: "Kibble", description: "A friendly dog")
  end

  after(:all) do
    Pet.destroy_all
  end

  describe ".search" do
    it "returns pets matching the search query" do
      search_query = "Moose"
      pets = Pet.search(search_query)
      expect(pets).to include(@pet1)
      expect(pets).not_to include(@pet2)
    end

    it "returns pets matching the search query in different fields" do
      search_query = "kibble"
      pets = Pet.search(search_query)
      expect(pets).to include(@pet2)
      expect(pets).not_to include(@pet1)
    end

    it "returns all pets when the search query is empty" do
      search_query = ""
      pets = Pet.search(search_query)
      expect(pets).to include(@pet1, @pet2)
    end
  end
end
