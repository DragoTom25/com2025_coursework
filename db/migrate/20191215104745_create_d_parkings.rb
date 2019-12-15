class CreateDParkings < ActiveRecord::Migration[5.2]
  def change
    create_table :d_parkings do |t|
      t.string :car_plate, null: false
      t.string :disability, null: false
      t.string :gender, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
