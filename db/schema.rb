ActiveRecord::Schema.define(version: 2018_04_29_190443) do

  create_table "guitar_picks", force: :cascade do |t|
    t.integer "guitar_id"
    t.integer "for_guitar_type"
    t.integer "user_id"
    t.integer "in_stock_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guitar_id"], name: "index_guitar_picks_on_guitar_id"
    t.index ["user_id"], name: "index_guitar_picks_on_user_id"
  end

  create_table "guitars", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.integer "guitar_type"
    t.integer "number_of_strings"
    t.decimal "price"
    t.string "serial_number", null: false
    t.date "date_purchased"
    t.date "date_sold"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_guitars_on_user_id"
  end

  create_table "straps", force: :cascade do |t|
    t.integer "guitar_id"
    t.integer "user_id"
    t.string "size"
    t.integer "in_stock_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guitar_id"], name: "index_straps_on_guitar_id"
    t.index ["user_id"], name: "index_straps_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
