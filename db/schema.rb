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

ActiveRecord::Schema.define(version: 20170617153823) do

  create_table "breaks", force: :cascade do |t|
    t.string   "brand"
    t.boolean  "front"
    t.boolean  "rear"
    t.integer  "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "breaks", ["service_id"], name: "index_breaks_on_service_id"

  create_table "oil_changes", force: :cascade do |t|
    t.boolean  "filter"
    t.string   "oil_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "service_id"
  end

  add_index "oil_changes", ["service_id"], name: "index_oil_changes_on_service_id"

  create_table "services", force: :cascade do |t|
    t.string   "service_option"
    t.integer  "odometer"
    t.date     "current_service"
    t.float    "price"
    t.text     "comments"
    t.float    "latitude"
    t.float    "longitude"
    t.date     "next_service"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "vehicle_id"
  end

  add_index "services", ["vehicle_id"], name: "index_services_on_vehicle_id"

  create_table "tires", force: :cascade do |t|
    t.string   "brand"
    t.string   "size"
    t.boolean  "front"
    t.boolean  "rear"
    t.boolean  "balance"
    t.boolean  "alignment"
    t.integer  "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tires", ["service_id"], name: "index_tires_on_service_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vehicles", force: :cascade do |t|
    t.string   "owner_name"
    t.string   "nick_name"
    t.integer  "year"
    t.string   "make"
    t.string   "model"
    t.integer  "original_odometer"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "image"
  end

  add_index "vehicles", ["user_id"], name: "index_vehicles_on_user_id"

end
