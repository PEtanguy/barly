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

ActiveRecord::Schema.define(version: 2019_11_27_163454) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "bar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["bar_id"], name: "index_admins_on_bar_id"
    t.index ["user_id"], name: "index_admins_on_user_id"
  end

  create_table "bars", force: :cascade do |t|
    t.text "address"
    t.integer "capacity"
    t.string "opening_time"
    t.string "closing_time"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_bars_on_user_id"
  end

  create_table "basket_items", force: :cascade do |t|
    t.bigint "menu_item_id"
    t.bigint "basket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity"
    t.index ["basket_id"], name: "index_basket_items_on_basket_id"
    t.index ["menu_item_id"], name: "index_basket_items_on_menu_item_id"
  end

  create_table "baskets", force: :cascade do |t|
    t.bigint "user_id"
    t.float "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_baskets_on_user_id"
  end

  create_table "employees", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "bar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.string "first_name"
    t.index ["bar_id"], name: "index_employees_on_bar_id"
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.text "description"
    t.string "ingredients"
    t.bigint "bar_id"
    t.bigint "template_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.index ["bar_id"], name: "index_menu_items_on_bar_id"
    t.index ["template_item_id"], name: "index_menu_items_on_template_item_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "table_id"
    t.bigint "bar_id"
    t.bigint "basket_id"
    t.datetime "creation_time"
    t.datetime "completion_time"
    t.text "notes"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_orders_on_bar_id"
    t.index ["basket_id"], name: "index_orders_on_basket_id"
    t.index ["table_id"], name: "index_orders_on_table_id"
  end

  create_table "tables", force: :cascade do |t|
    t.bigint "bar_id"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_tables_on_bar_id"
  end

  create_table "template_items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "ingredients"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.date "dob"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "admins", "bars"
  add_foreign_key "admins", "users"
  add_foreign_key "bars", "users"
  add_foreign_key "basket_items", "baskets"
  add_foreign_key "basket_items", "menu_items"
  add_foreign_key "baskets", "users"
  add_foreign_key "employees", "bars"
  add_foreign_key "employees", "users"
  add_foreign_key "menu_items", "bars"
  add_foreign_key "menu_items", "template_items"
  add_foreign_key "orders", "bars"
  add_foreign_key "orders", "baskets"
  add_foreign_key "orders", "tables"
  add_foreign_key "tables", "bars"
end
