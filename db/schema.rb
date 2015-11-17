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

ActiveRecord::Schema.define(version: 20151117094036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string   "first_name",      limit: 25
    t.string   "last_name",       limit: 50
    t.string   "email",           limit: 100, default: "", null: false
    t.string   "username",        limit: 25
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assignments", force: :cascade do |t|
    t.integer  "document_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profile_id"
  end

  add_index "assignments", ["document_id"], name: "index_assignments_on_document_id", using: :btree
  add_index "assignments", ["profile_id"], name: "index_assignments_on_profile_id", using: :btree

  create_table "documents", force: :cascade do |t|
    t.string   "name"
    t.integer  "warning_days"
    t.integer  "critical_days"
    t.integer  "expire_days"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "employees", force: :cascade do |t|
    t.boolean  "is_active",  default: true
    t.string   "last_name"
    t.string   "first_name"
    t.date     "birthdate"
    t.string   "status"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "profile_id"
  end

  add_index "employees", ["profile_id"], name: "index_employees_on_profile_id", using: :btree

  create_table "papers", force: :cascade do |t|
    t.integer  "document_id"
    t.date     "expiration_date"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "employee_id"
    t.string   "document_file_file_name"
    t.string   "document_file_content_type"
    t.integer  "document_file_file_size"
    t.datetime "document_file_updated_at"
  end

  add_index "papers", ["document_id"], name: "index_papers_on_document_id", using: :btree
  add_index "papers", ["employee_id"], name: "index_papers_on_employee_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "name",                   limit: 50
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "papers", "documents"
  add_foreign_key "papers", "employees"
end
