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

ActiveRecord::Schema.define(version: 20140803081306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adverts", force: true do |t|
    t.integer  "dwelling_id",                                              null: false
    t.integer  "user_id",                                                  null: false
    t.text     "description",                              default: "",    null: false
    t.decimal  "price",            precision: 9, scale: 2, default: 0.0,   null: false
    t.boolean  "furniture_exists"
    t.boolean  "fridge_exists",                            default: false, null: false
    t.boolean  "washer_exists",                            default: false, null: false
    t.boolean  "tv_exists",                                default: false, null: false
    t.boolean  "phone_exists",                             default: false, null: false
    t.boolean  "children_allow",                           default: false, null: false
    t.boolean  "wild_allow",                               default: false, null: false
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "adverts", ["dwelling_id"], name: "index_adverts_on_dwelling_id", using: :btree
  add_index "adverts", ["user_id"], name: "index_adverts_on_user_id", using: :btree

  create_table "dwellings", force: true do |t|
    t.integer  "area",               default: 0,     null: false
    t.integer  "dwelling_area",      default: 0,     null: false
    t.integer  "kitchen_area",       default: 0,     null: false
    t.integer  "count_room",         default: 1,     null: false
    t.boolean  "adjacent_rooms",     default: false, null: false
    t.boolean  "separated_bathroom", default: false, null: false
    t.integer  "level",              default: 1,     null: false
    t.string   "address"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "phone",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
