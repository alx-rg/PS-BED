module PetsHelper

  def loveFetch(pet)
    if pet.fetching?
      "I love fetching!"
    else
      "I don't fetch"
    end
  end

  def priceless(pet)
    if pet.price && pet.price > 50
      content_tag(:strong, "Priceless")
    elsif pet.price
      content_tag(:i, "#{number_to_currency(pet.price, precision: 0)}")
    else
      content_tag(:i, "N/A")
    end
  end

end
