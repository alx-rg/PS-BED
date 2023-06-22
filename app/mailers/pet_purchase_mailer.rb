class PetPurchaseMailer < ApplicationMailer
  def purchase_confirmation(pet, buyer_email)
    @pet = pet
    mail(to: buyer_email, subject: "Pet Purchase Confirmation")
  end
end
