class Pet < ApplicationRecord
  # serialize :picUrlSq, Array

  def fetching?
    fetch || fetch.nil?
  end

  include PgSearch::Model

  pg_search_scope :search,
                  against: {
                    name: 'A',
                    breed: 'B',
                    favoriteFood: 'C',
                    description: 'D'
                  },
                  using: {
                    tsearch: {prefix: true}
                  }
end
