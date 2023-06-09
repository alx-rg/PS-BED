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

ActiveRecord::Schema[7.0].define(version: 2023_06_02_010903) do
  create_table "payments", force: :cascade do |t|
    t.decimal "amount"
    t.string "currency"
    t.string "status"
    t.string "charge_id"
    t.string "email"
    t.string "customer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "race"
    t.string "breed"
    t.date "birthday"
    t.string "favoriteFood"
    t.string "picUrl"
    t.decimal "price"
    t.text "picUrlSq"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "fetch"
    t.string "image"
    t.string "charge_id"
    t.decimal "amount"
    t.string "currency"
    t.string "status"
    t.string "email"
  end

end
