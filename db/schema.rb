# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_06_090316) do
  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "trip_id", null: false
    t.index ["trip_id"], name: "index_destinations_on_trip_id"
  end

  create_table "stopovers", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.string "activity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "trip_id", null: false
    t.integer "destination_id", null: false
    t.index ["destination_id"], name: "index_stopovers_on_destination_id"
    t.index ["trip_id"], name: "index_stopovers_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "title"
    t.string "start_date"
    t.string "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "destinations", "trips"
  add_foreign_key "stopovers", "destinations"
  add_foreign_key "stopovers", "trips"
  add_foreign_key "trips", "users"
end
