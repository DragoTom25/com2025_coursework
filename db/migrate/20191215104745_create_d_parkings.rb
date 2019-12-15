class CreateDParkings < ActiveRecord::Migration[5.2]
  def change
    create_table :d_parkings do |t|
      t.string :car_plate
      t.string :disability
      t.string :gender
      t.string :name

      t.timestamps
    end
  end
end
