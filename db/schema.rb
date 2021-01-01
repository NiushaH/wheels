# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_01_002041) do

  create_table "cars", force: :cascade do |t|
    t.integer "year"
    t.string "make"
    t.string "model"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "driver_user_id"
    t.index ["driver_user_id"], name: "index_cars_on_driver_user_id"
  end

  create_table "rides", force: :cascade do |t|
    t.date "departure_date"
    t.string "origin"
    t.string "destination"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "hitchhiker_user_id"
    t.integer "driver_user_id"
    t.integer "car_id"
    t.index ["car_id"], name: "index_rides_on_car_id"
    t.index ["driver_user_id"], name: "index_rides_on_driver_user_id"
    t.index ["hitchhiker_user_id"], name: "index_rides_on_hitchhiker_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "user_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "car_id"
    t.integer "ride_id"
    t.index ["car_id"], name: "index_users_on_car_id"
    t.index ["ride_id"], name: "index_users_on_ride_id"
  end

end
