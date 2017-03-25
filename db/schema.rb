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

ActiveRecord::Schema.define(version: 20170325025941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cup_add_ons", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cups", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_item_add_ons", force: :cascade do |t|
    t.integer  "order_item_id"
    t.integer  "cup_add_on_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["cup_add_on_id"], name: "index_order_item_add_ons_on_cup_add_on_id", using: :btree
    t.index ["order_item_id"], name: "index_order_item_add_ons_on_order_item_id", using: :btree
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "cup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cup_id"], name: "index_order_items_on_cup_id", using: :btree
    t.index ["order_id"], name: "index_order_items_on_order_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.string   "customer"
    t.decimal  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "order_item_add_ons", "cup_add_ons"
  add_foreign_key "order_item_add_ons", "order_items"
  add_foreign_key "order_items", "cups"
  add_foreign_key "order_items", "orders"
end
