class AddPlacesToCar < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :top_places, :integer
    add_column :cars, :bottom_places, :integer
  end
end
