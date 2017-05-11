class DelTableCarTypes < ActiveRecord::Migration[5.0]
  def up
     drop_table :car_types
   end
end
