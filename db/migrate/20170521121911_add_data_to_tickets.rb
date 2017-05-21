class AddDataToTickets < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :first_name, :string
    add_column :tickets, :last_name, :string
    add_column :tickets, :passport, :string
  end
end
