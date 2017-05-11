class AddChoiceToTrain < ActiveRecord::Migration[5.0]
  def change
    add_column :trains, :choice, :boolean
  end
end
