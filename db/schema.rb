# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141202023919) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "appitizers", force: true do |t|
    t.integer "item_id"
    t.string  "sm_price"
    t.string  "lg_price"
    t.string  "name"
  end

  add_index "appitizers", ["item_id"], name: "index_appitizers_on_item_id"

  create_table "beefs", force: true do |t|
    t.integer "item_id"
    t.string  "sm_price"
    t.string  "lg_price"
    t.string  "name"
  end

  add_index "beefs", ["item_id"], name: "index_beefs_on_item_id"

  create_table "chefs", force: true do |t|
    t.integer "item_id"
    t.string  "price"
    t.string  "name"
  end

  add_index "chefs", ["item_id"], name: "index_chefs_on_item_id"

  create_table "chickens", force: true do |t|
    t.integer "item_id"
    t.string  "sm_price"
    t.string  "lg_price"
    t.string  "name"
  end

  add_index "chickens", ["item_id"], name: "index_chickens_on_item_id"

  create_table "combos", force: true do |t|
    t.string  "combo_price"
    t.integer "comboable_id"
    t.string  "comboable_type"
  end

  create_table "extras", force: true do |t|
    t.integer "item_id"
    t.string  "sm_price"
    t.string  "lg_price"
    t.string  "name"
  end

  add_index "extras", ["item_id"], name: "index_extras_on_item_id"

  create_table "hours", force: true do |t|
    t.integer "restaurant_id"
    t.string  "sunday"
    t.string  "monday"
    t.string  "tuesday"
    t.string  "wednesday"
    t.string  "thursday"
    t.string  "friday"
    t.string  "saturday"
  end

  add_index "hours", ["restaurant_id"], name: "index_hours_on_restaurant_id"

  create_table "housespecials", force: true do |t|
    t.integer "item_id"
    t.string  "name"
    t.string  "sm_price"
    t.string  "lg_price"
  end

  add_index "housespecials", ["item_id"], name: "index_housespecials_on_item_id"

  create_table "ingredients", force: true do |t|
    t.string  "name"
    t.integer "item_id"
    t.string  "price"
  end

  add_index "ingredients", ["item_id"], name: "index_ingredients_on_item_id"

  create_table "items", force: true do |t|
    t.integer "restaurant_id"
    t.string  "desc"
    t.text    "type"
    t.boolean "lunch",         default: false
    t.boolean "combo",         default: false
  end

  add_index "items", ["restaurant_id"], name: "index_items_on_restaurant_id"

  create_table "lunches", force: true do |t|
    t.string  "ln_price"
    t.integer "lunchable_id"
    t.string  "lunchable_type"
  end

  create_table "orderitems", force: true do |t|
    t.integer "item_id"
    t.integer "order_id"
    t.string  "qty"
    t.string  "instuctions"
  end

  add_index "orderitems", ["item_id"], name: "index_orderitems_on_item_id"
  add_index "orderitems", ["order_id"], name: "index_orderitems_on_order_id"

  create_table "orders", force: true do |t|
    t.integer "user_id"
    t.string  "subtotal"
    t.string  "total"
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "porks", force: true do |t|
    t.integer "item_id"
    t.string  "sm_price"
    t.string  "lg_price"
    t.string  "name"
  end

  add_index "porks", ["item_id"], name: "index_porks_on_item_id"

  create_table "profiles", force: true do |t|
    t.integer "user_id"
    t.string  "address"
    t.string  "zip"
    t.string  "contact"
    t.string  "instructions"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "restaurants", force: true do |t|
    t.integer "admin_id"
    t.string  "address"
    t.string  "phone_number"
  end

  add_index "restaurants", ["admin_id"], name: "index_restaurants_on_admin_id"

  create_table "shrimps", force: true do |t|
    t.integer "item_id"
    t.string  "sm_price"
    t.string  "lg_price"
    t.string  "name"
  end

  add_index "shrimps", ["item_id"], name: "index_shrimps_on_item_id"

  create_table "soups", force: true do |t|
    t.integer "item_id"
    t.string  "sm_price"
    t.string  "lg_price"
    t.string  "name"
  end

  add_index "soups", ["item_id"], name: "index_soups_on_item_id"

  create_table "specialcombos", force: true do |t|
    t.integer "item_id"
    t.string  "plain"
    t.string  "ff"
    t.string  "plainfr"
    t.string  "veg"
    t.string  "pork_chicken"
    t.string  "shrimp_beef"
    t.string  "wr"
    t.string  "name"
  end

  add_index "specialcombos", ["item_id"], name: "index_specialcombos_on_item_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "veggies", force: true do |t|
    t.integer "item_id"
    t.string  "sm_price"
    t.string  "lg_price"
    t.string  "name"
  end

  add_index "veggies", ["item_id"], name: "index_veggies_on_item_id"

end
