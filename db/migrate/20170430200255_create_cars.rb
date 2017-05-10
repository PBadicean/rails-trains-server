class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.integer :car_type_id
      t.timestamps
    end
  end
end
