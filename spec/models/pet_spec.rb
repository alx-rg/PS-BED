# spec/models/pet_spec.rb

require 'rails_helper'

RSpec.describe Pet, type: :model do
  before(:all) do
    @pet1 = Pet.create(name: "Moose Doodle", race: "Dog", breed: "Golden Doodle", favoriteFood: "Raw Meat", description: "The best doggo")
    @pet2 = Pet.create(name: "Buddy", race: "Dog", breed: "Labrador Retriever", favoriteFood: "Kibble", description: "A friendly dog")
    @pet3 = Pet.create(name: "Buddy", race: "Dog", breed: "Labrador Retriever", favoriteFood: "Kibble", description: "A friendly dog")
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
  end

  describe ".search with weighted fields" do
    it "returns pets ordered by the weights assigned to the search fields" do
      @pet4 = Pet.create(name: "Moose", race: "Dog", breed: "Golden Retriever", favoriteFood: "Kibble", description: "A friendly dog")
      search_query = "Moose"

      # Expect the search result to be ordered by weight: name (A) > breed (B) > favoriteFood (C) > description (D)
      pets = Pet.search(search_query)
      expect(pets.first).to eq(@pet1) # Pet with 'Moose' in the name (highest weight)
      expect(pets.second).to eq(@pet4) # Pet with 'Moose' in the breed (second highest weight)
    end
  end

  # Testing Pagination:
  it 'search method should return paginated results' do
    search_results = Pet.search('Moose').page(1).per(3)
    expect(search_results.count).to eq(1)
  end

end
