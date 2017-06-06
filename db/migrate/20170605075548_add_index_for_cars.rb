class AddIndexForCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :train_id, :integer
    add_index :cars, :train_id
  end
end
