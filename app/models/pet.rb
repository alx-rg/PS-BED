class Pet < ApplicationRecord
  serialize :picUrlSq, Array

  def fetching?
    fetch || fetch.nil?
  end

end
