class AddIndexToDParking < ActiveRecord::Migration[5.2]
  def change
    add_index :d_parkings, :car_plate, unique: true
  end
end
