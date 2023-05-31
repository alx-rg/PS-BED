class Pet < ApplicationRecord
  # serialize :picUrlSq, Array

  validates :name, :race, :breed, :favoriteFood, presence: true
  validate :birthday_cannot_be_in_the_future
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :picUrl, :picUrlSq, format: { with: /\A(http|https):\/\/\S+\z/ }
  validates :description, length: { minimum: 140 }
  validates :fetch, presence: true

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

  private

  def birthday_cannot_be_in_the_future
    if birthday.present? && birthday > Date.today
      errors.add(:birthday, "cannot be in the future")
    end
  end

end
