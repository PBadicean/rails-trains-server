class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.integer :user_id
      t.integer :ticket_id
      t.timestamps
    end
  end
end
