class DelAddColumnToCar < ActiveRecord::Migration[5.0]
  def up
    remove_column :cars, :car_type_id
    remove_column :cars, :top_places, :integer
    remove_column :cars, :bottom_places, :integer
  end
end
