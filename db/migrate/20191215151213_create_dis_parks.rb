class CreateDisParks < ActiveRecord::Migration[5.2]
  def change
    create_table :dis_parks do |t|
      t.string :car_reg, null: false
      t.string :disability, null: false
      t.string :dname, null: false
      t.string :gender, null: false

      t.timestamps
    end
  end
end
