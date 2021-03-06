# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_15_151959) do

  create_table "cars", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "car_plate", null: false
    t.string "car_brand", null: false
    t.string "car_model", null: false
    t.string "colour", null: false
    t.string "owners_reg", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_plate"], name: "index_cars_on_car_plate", unique: true
    t.index ["user_id"], name: "index_cars_on_user_id"
  end


  create_table "dis_parks", force: :cascade do |t|
    t.string "car_reg", null: false
    t.string "disability", null: false
    t.string "dname", null: false
    t.string "gender", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_reg"], name: "index_dis_parks_on_car_reg", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
