class AddIndexToDisPark < ActiveRecord::Migration[5.2]
  def change
    add_index :dis_parks, :car_reg, unique: true
  end
end
