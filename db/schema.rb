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

ActiveRecord::Schema.define(version: 2019_06_17_181134) do

  create_table "appointments", force: :cascade do |t|
    t.integer "duration"
    t.string "type"
    t.integer "date"
    t.integer "time"
    t.integer "case_id"
    t.integer "lawyer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cases", force: :cascade do |t|
    t.string "title"
    t.string "type"
    t.string "status"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "phone"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lawyer_cases", force: :cascade do |t|
    t.integer "case_id"
    t.integer "lawyer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lawyers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "phone"
    t.string "address"
    t.integer "attorney_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
