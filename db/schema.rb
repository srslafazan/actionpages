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

ActiveRecord::Schema.define(version: 20160204140525) do

  create_table "pages", force: :cascade do |t|
    t.string   "headline"
    t.string   "color"
    t.string   "buttoncolor"
    t.string   "buttontext"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
  end

  create_table "referralpages", force: :cascade do |t|
    t.string   "navcolor"
    t.string   "rheadline"
    t.string   "rheadlinecolor"
    t.string   "rbackgroundcolor"
    t.string   "rboxcolor"
    t.string   "rcountcolor"
    t.string   "rhow"
    t.string   "rhowcolor"
    t.string   "rightheadline"
    t.string   "rightsub"
    t.string   "rightcolor"
    t.string   "bottomsub"
    t.string   "reward1"
    t.string   "reward2"
    t.string   "reward3"
    t.string   "reward4"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "page_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "twitter"
    t.string   "facebook"
  end

  create_table "subscribers", force: :cascade do |t|
    t.string   "email"
    t.string   "subscriberable_type"
    t.integer  "subscriberable_id"
    t.integer  "referrer_id"
    t.integer  "referral_code"
    t.integer  "page_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
