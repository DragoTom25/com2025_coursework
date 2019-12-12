class AddIndexToCars < ActiveRecord::Migration[5.2]
  def change
    add_index :cars, :car_plate, unique: true
  end
end
