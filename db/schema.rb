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

ActiveRecord::Schema.define(version: 20140316122815) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catch_reports", force: true do |t|
    t.text     "description"
    t.string   "gps_coords"
    t.integer  "user_id"
    t.integer  "start_time"
    t.integer  "stop_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "catch_reports", ["start_time"], name: "index_catch_reports_on_start_time", using: :btree
  add_index "catch_reports", ["stop_time"], name: "index_catch_reports_on_stop_time", using: :btree
  add_index "catch_reports", ["user_id"], name: "index_catch_reports_on_user_id", using: :btree

  create_table "catches", force: true do |t|
    t.decimal  "length"
    t.decimal  "weight"
    t.integer  "catch_report_id"
    t.integer  "fish_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fish", force: true do |t|
    t.string   "name"
    t.string   "latin"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
