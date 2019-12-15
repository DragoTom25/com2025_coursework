class AddIndexToDisable < ActiveRecord::Migration[5.2]
  def change
    add_index :disableds, :car_plate, unique: true
  end
end
