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

ActiveRecord::Schema.define(version: 20130609043227) do

  create_table "meals", force: true do |t|
    t.datetime "at"
    t.string   "description"
    t.string   "url"
    t.string   "image"
    t.integer  "seiyu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meals", ["at"], name: "index_meals_on_at"
  add_index "meals", ["seiyu_id"], name: "index_meals_on_seiyu_id"

  create_table "menus", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "cal"
    t.integer  "meal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menus", ["meal_id"], name: "index_menus_on_meal_id"

  create_table "seiyus", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seiyus", ["name"], name: "index_seiyus_on_name"

end
