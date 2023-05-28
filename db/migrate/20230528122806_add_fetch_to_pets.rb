class AddFetchToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :fetch, :boolean
  end
end
