class AddChargeIdAmountCurrencyStatusEmailToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :charge_id, :string
    add_column :pets, :amount, :decimal
    add_column :pets, :currency, :string
    add_column :pets, :status, :string
    add_column :pets, :email, :string
  end
end
