# spec/models/pet_spec.rb

require 'rails_helper'

RSpec.describe Pet, type: :model do
  before(:all) do
    @pet1 = Pet.create(name: "Moose Doodle", race: "Dog", breed: "Golden Doodle", favoriteFood: "Raw Meat", description: "The best doggo. A wonderful companion for people of all ages. Friendly, playful, and always ready for a walk.A friendly dog. Great with children and other pets. Loves to play fetch and go for long walks in the park.", price: 1000, fetch: true, birthday: Date.today - 2.years, picUrl: "https://example.com/pet1.jpg", picUrlSq: "https://example.com/pet1_sq.jpg")
    @pet2 = Pet.create(name: "Buddy", race: "Dog", breed: "Labrador Retriever", favoriteFood: "Kibble", description: "A friendly dog. Great with children and other pets. Loves to play fetch and go for long walks in the park.A friendly dog. Great with children and other pets. Loves to play fetch and go for long walks in the park.", price: 1200, fetch: true, birthday: Date.today - 3.years, picUrl: "https://example.com/pet2.jpg", picUrlSq: "https://example.com/pet2_sq.jpg")
    @pet3 = Pet.create(name: "Buddy", race: "Dog", breed: "Labrador Retriever", favoriteFood: "Kibble", description: "A friendly dog. Great with children and other pets. Loves to play fetch and go for long walks in the park.A friendly dog. Great with children and other pets. Loves to play fetch and go for long walks in the park.", price: 1200, fetch: true, birthday: Date.today - 3.years, picUrl: "https://example.com/pet3.jpg", picUrlSq: "https://example.com/pet3_sq.jpg")
    # puts @pet1.inspect
    # puts @pet2.inspect
    # puts @pet3.inspect
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

  describe ".pagination" do
    it 'search method should return paginated results' do
      search_results = Pet.search('').page(1).per(3)
      expect(search_results.count).to eq(3)
    end
  end

  describe ".validates" do
    it "is valid with all required fields filled in" do
      pet = Pet.new(name: "Buddy", race: "Dog", breed: "Labrador Retriever", favoriteFood: "Kibble", description: "A friendly dog. Great with children and other pets. Loves to play fetch and go for long walks in the park.A friendly dog. Great with children and other pets. Loves to play fetch and go for long walks in the park.", price: 1200, fetch: true, birthday: Date.today - 3.years, picUrl: "https://example.com/pet3.jpg", picUrlSq: "https://example.com/pet3_sq.jpg")
      expect(pet).to be_valid
    end

    it "is invalid without a name" do
      pet = Pet.new(name: nil, race: "Dog", breed: "Labrador Retriever", favoriteFood: "Kibble", description: "A friendly dog", price: 100, fetch: true, birthday: Date.today)
      expect(pet).to_not be_valid
      expect(pet.errors[:name]).to include("can't be blank")
    end
  end

end
