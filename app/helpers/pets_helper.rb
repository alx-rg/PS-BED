module PetsHelper

  def loveFetch(pet)
    if pet.fetching?
      "I love fetching!"
    else
      "I don't fetch"
    end
  end

  def priceless(pet)
    if pet.price > 50
      content_tag(:strong, "Priceless")
    else
      content_tag(:i, "#{number_to_currency(pet.price, precision: 0)}")
    end
  end

end
