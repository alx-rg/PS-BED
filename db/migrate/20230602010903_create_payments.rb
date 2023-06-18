class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.string :currency
      t.string :status
      t.string :charge_id
      t.string :email
      t.string :customer

      t.timestamps
    end
  end
end
