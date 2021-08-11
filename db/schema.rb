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

ActiveRecord::Schema.define(version: 2021_08_11_021731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drugstores", force: :cascade do |t|
    t.string "name"
    t.decimal "cashBalance"
    t.string "openingHours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "mask_price"
  end

  create_table "drugstores_masks", id: false, force: :cascade do |t|
    t.bigint "mask_id"
    t.bigint "drugstore_id"
    t.index ["drugstore_id"], name: "index_drugstores_masks_on_drugstore_id"
    t.index ["mask_id"], name: "index_drugstores_masks_on_mask_id"
  end

  create_table "masks", force: :cascade do |t|
    t.string "mask_name"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "purchase_histories", force: :cascade do |t|
    t.string "drugstore_name"
    t.string "mask_name"
    t.decimal "transaction_amount"
    t.datetime "transaction_date"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "searches", force: :cascade do |t|
    t.time "opening_time"
    t.date "opening_days"
    t.string "mask_name"
    t.decimal "min_price"
    t.decimal "max_price"
    t.string "drugstore_name"
    t.decimal "transaction_amounts"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.decimal "cashBalance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
