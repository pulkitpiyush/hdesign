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

ActiveRecord::Schema.define(version: 20140218183455) do

  create_table "approve_flags", force: true do |t|
    t.integer  "professional_id"
    t.integer  "project_id"
    t.integer  "photo_id"
    t.text     "description"
    t.boolean  "approved",        default: false
    t.boolean  "deleted",         default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "approve_flags", ["photo_id"], name: "index_approve_flags_on_photo_id", using: :btree
  add_index "approve_flags", ["professional_id"], name: "index_approve_flags_on_professional_id", using: :btree
  add_index "approve_flags", ["project_id"], name: "index_approve_flags_on_project_id", using: :btree

  create_table "comments", force: true do |t|
    t.integer  "professional_id"
    t.integer  "project_id"
    t.integer  "photo_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["photo_id"], name: "index_comments_on_photo_id", using: :btree
  add_index "comments", ["professional_id"], name: "index_comments_on_professional_id", using: :btree
  add_index "comments", ["project_id"], name: "index_comments_on_project_id", using: :btree

  create_table "photos", force: true do |t|
    t.integer  "professional_id"
    t.integer  "project_id"
    t.integer  "tag_id"
    t.string   "name"
    t.string   "desc"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["professional_id"], name: "index_photos_on_professional_id", using: :btree
  add_index "photos", ["project_id"], name: "index_photos_on_project_id", using: :btree
  add_index "photos", ["tag_id"], name: "index_photos_on_tag_id", using: :btree

  create_table "professionals", force: true do |t|
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "website",                limit: 50
    t.string   "addr_line1"
    t.string   "addr_line2"
    t.string   "addr_city",              limit: 25
    t.string   "addr_state",             limit: 25
    t.integer  "pincode"
    t.integer  "phone_1"
    t.integer  "phone_2"
    t.integer  "phone_3"
    t.string   "profile_pic_link"
    t.string   "area_served"
    t.string   "firm_name"
    t.string   "firm_category",          limit: 25
    t.string   "license_no",             limit: 25
    t.text     "business_desc"
    t.string   "fb_link"
    t.string   "twitter_link"
    t.text     "awards"
    t.text     "fee_structure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professionals", ["confirmation_token"], name: "index_professionals_on_confirmation_token", unique: true, using: :btree
  add_index "professionals", ["email"], name: "index_professionals_on_email", unique: true, using: :btree
  add_index "professionals", ["reset_password_token"], name: "index_professionals_on_reset_password_token", unique: true, using: :btree

  create_table "projects", force: true do |t|
    t.integer  "professional_id"
    t.string   "name"
    t.string   "description"
    t.string   "album_name"
    t.string   "album_desc"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["name"], name: "index_projects_on_name", using: :btree
  add_index "projects", ["professional_id"], name: "index_projects_on_professional_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
