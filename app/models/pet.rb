class Pet < ApplicationRecord
  # serialize :picUrlSq, Array

  def fetching?
    fetch || fetch.nil?
  end

  # Search method for Pet model
  def self.search(query)
    if query.present?
      where("LOWER(name) LIKE LOWER(:query) OR LOWER(description) LIKE LOWER(:query) OR LOWER(favoriteFood) LIKE LOWER(:query) OR LOWER(breed) LIKE LOWER(:query) OR LOWER(race) LIKE LOWER(:query)", query: "%#{query}%")
    else
      all
    end
  end
end
