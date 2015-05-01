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

ActiveRecord::Schema.define(version: 20150501172005) do

  create_table "admin_users", force: :cascade do |t|
    t.string "first_name",      limit: 25
    t.string "last_name",       limit: 50
    t.string "email",           limit: 100, default: "", null: false
    t.string "username",        limit: 25
    t.string "password_digest"
  end

  create_table "alerts", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "paper_id"
    t.string   "alert_status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "assignments", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "document_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignments", ["document_id"], name: "index_assignments_on_document_id"
  add_index "assignments", ["profile_id"], name: "index_assignments_on_profile_id"

  create_table "documents", force: :cascade do |t|
    t.string   "document_name"
    t.integer  "unused_prf_id_old"
    t.integer  "warning_days"
    t.integer  "critical_days"
    t.integer  "expire_days"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "warning_months"
    t.integer  "critical_months"
    t.integer  "expire_months"
  end

  create_table "employees", force: :cascade do |t|
    t.boolean  "is_active"
    t.string   "last_name"
    t.string   "first_name"
    t.date     "birthdate"
    t.string   "status"
    t.integer  "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "filter_boxes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "filters", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "filter_type"
  end

  create_table "papers", force: :cascade do |t|
    t.integer  "document_id"
    t.date     "expiration_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "employee_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "profile_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "session_start_datetime"
    t.float    "session_temp"
    t.float    "session_hygro"
    t.integer  "employee_id"
    t.integer  "dog_id"
    t.integer  "slot_1_filter"
    t.float    "slot_1_temp"
    t.integer  "slot_2_filter"
    t.float    "slot_2_temp"
    t.integer  "slot_3_filter"
    t.float    "slot_3_temp"
    t.integer  "slot_4_filter"
    t.float    "slot_4_temp"
    t.integer  "slot_5_filter"
    t.float    "slot_5_temp"
    t.string   "result"
    t.text     "comments"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

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
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
