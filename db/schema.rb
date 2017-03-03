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

ActiveRecord::Schema.define(version: 20170228151108) do

  create_table "doggies", force: :cascade do |t|
    t.integer  "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "doggies", ["venue_id"], name: "index_doggies_on_venue_id"

  create_table "events", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "table_view"
    t.string   "name"
    t.date     "date"
    t.string   "description"
    t.integer  "venue_id"
  end

  create_table "externals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guestlists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "event_id"
    t.string   "name"
    t.integer  "count"
    t.string   "cover"
    t.decimal  "spent"
    t.string   "added_by"
    t.string   "notes"
    t.boolean  "checked_in"
  end

  create_table "manage_inventories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promoters", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "name"
    t.integer  "guest_count"
    t.integer  "min"
    t.integer  "spent"
    t.integer  "tables"
    t.string   "status"
    t.string   "server"
    t.string   "added_by"
    t.text     "notes"
    t.integer  "venue_id"
    t.boolean  "checked_in"
    t.decimal  "male_user"
    t.decimal  "female_user"
    t.decimal  "unisex_user"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "table_views", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "venues", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.string   "address"
    t.string   "description"
    t.string   "phone"
    t.string   "type"
  end

end
