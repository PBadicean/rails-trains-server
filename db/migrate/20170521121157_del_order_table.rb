class DelOrderTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :orders
  end
end
