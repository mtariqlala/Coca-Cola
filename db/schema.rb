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

ActiveRecord::Schema.define(version: 20161218171341) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deliveries", force: :cascade do |t|
    t.date     "delivery_date"
    t.integer  "distance_covered"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "name"
    t.string   "contact_no"
    t.decimal  "salary"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drives", force: :cascade do |t|
    t.date     "date_of"
    t.integer  "lorry_id"
    t.integer  "driver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "drives", ["driver_id"], name: "index_drives_on_driver_id", using: :btree
  add_index "drives", ["lorry_id"], name: "index_drives_on_lorry_id", using: :btree

  create_table "gets", force: :cascade do |t|
    t.integer  "outlet_id"
    t.integer  "delivery_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "gets", ["delivery_id"], name: "index_gets_on_delivery_id", using: :btree
  add_index "gets", ["outlet_id"], name: "index_gets_on_outlet_id", using: :btree

  create_table "lorries", force: :cascade do |t|
    t.string   "Lorry_no"
    t.string   "made_in"
    t.date     "date_of_manufacturer"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "makes", force: :cascade do |t|
    t.integer  "delivery_id"
    t.integer  "lorry_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "makes", ["delivery_id"], name: "index_makes_on_delivery_id", using: :btree
  add_index "makes", ["lorry_id"], name: "index_makes_on_lorry_id", using: :btree

  create_table "managers", force: :cascade do |t|
    t.string   "manager_name"
    t.string   "contact_no"
    t.float    "salary"
    t.string   "address"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "outlets", force: :cascade do |t|
    t.string   "outlet_Name"
    t.string   "location"
    t.integer  "manager_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "outlets", ["manager_id"], name: "index_outlets_on_manager_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "drives", "drivers"
  add_foreign_key "drives", "lorries"
  add_foreign_key "gets", "deliveries"
  add_foreign_key "gets", "outlets"
  add_foreign_key "makes", "deliveries"
  add_foreign_key "makes", "lorries"
  add_foreign_key "outlets", "managers"
end
