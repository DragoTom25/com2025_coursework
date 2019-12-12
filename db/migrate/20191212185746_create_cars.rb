class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :car_plate, null: false
      t.string :car_brand, null: false
      t.string :car_model, null: false
      t.string :colour, null: false
      t.string :owners_reg, null:false

      t.timestamps
    end
  end
end
