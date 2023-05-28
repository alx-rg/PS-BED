class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :race
      t.string :breed
      t.date :birthday
      t.string :favoriteFood
      t.string :picUrl
      t.decimal :price
      t.text :picUrlSq
      t.text :description

      t.timestamps
    end
  end
end
