class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :car_plate
      t.string :car_brand
      t.string :car_model
      t.string :colour
      t.string :owners_reg

      t.timestamps
    end
  end
end
