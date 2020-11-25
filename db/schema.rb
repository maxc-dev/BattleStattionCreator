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

ActiveRecord::Schema.define(version: 2020_11_22_182819) do

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.string "abbrv"
    t.text "description"
    t.boolean "compulsory", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "manufacturer_id", null: false
    t.string "name", null: false
    t.string "description"
    t.integer "power", default: 0
    t.decimal "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_parts_on_category_id"
    t.index ["manufacturer_id"], name: "index_parts_on_manufacturer_id"
  end

end
