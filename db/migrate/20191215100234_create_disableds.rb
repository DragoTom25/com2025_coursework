class CreateDisableds < ActiveRecord::Migration[5.2]
  def change
    create_table :disableds do |t|
      t.string :car_plate, null: false
      t.string :disability, null: false
      t.string :name, null: false
      t.string :gender

      t.timestamps
    end
  end
end
