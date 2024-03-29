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

ActiveRecord::Schema.define(version: 20170331033632) do

  create_table "jobs", force: :cascade do |t|
    t.string   "location"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "no_of_slots"
    t.integer  "rate_per_hour"
    t.boolean  "completed"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                   default: "",    null: false
    t.string   "encrypted_password",      default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",           default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "authy_id"
    t.datetime "last_sign_in_with_authy"
    t.boolean  "authy_enabled",           default: false
    t.string   "name"
    t.string   "nric"
    t.integer  "contact_number"
    t.string   "gender"
    t.date     "date_of_birth"
    t.string   "address"
    t.string   "student_status"
    t.string   "student_school"
    t.string   "bank_name"
    t.integer  "bank_account_number"
    t.string   "colored_hair_status"
    t.string   "tattoo_status"
  end

  add_index "users", ["authy_id"], name: "index_users_on_authy_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
