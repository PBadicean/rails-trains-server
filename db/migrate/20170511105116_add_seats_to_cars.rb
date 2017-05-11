class AddSeatsToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :number, :integer
    add_column :cars, :top_seats, :integer
    add_column :cars, :sedentery_seats, :integer
    add_column :cars, :bottom_seats, :integer
    add_column :cars, :side_bottom_seats, :integer
    add_column :cars, :side_top_seats, :integer
  end
end
