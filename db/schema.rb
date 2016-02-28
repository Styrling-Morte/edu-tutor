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

ActiveRecord::Schema.define(version: 20160228213601) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string   "booking_start"
    t.string   "booking_end"
    t.boolean  "confirmation"
    t.string   "frequency"
    t.integer  "ward_id"
    t.integer  "subject_id"
    t.integer  "tutor_detail_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "bookings", ["subject_id"], name: "index_bookings_on_subject_id", using: :btree
  add_index "bookings", ["tutor_detail_id"], name: "index_bookings_on_tutor_detail_id", using: :btree
  add_index "bookings", ["ward_id"], name: "index_bookings_on_ward_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "score"
    t.text     "comment"
    t.integer  "user_id"
    t.integer  "tutor_detail_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "reviews", ["tutor_detail_id"], name: "index_reviews_on_tutor_detail_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "specializations", force: :cascade do |t|
    t.integer  "years_of_experience"
    t.string   "qualification1"
    t.string   "qualification2"
    t.integer  "grade_start"
    t.integer  "grade_end"
    t.integer  "tutor_detail_id"
    t.integer  "subject_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "specializations", ["subject_id"], name: "index_specializations_on_subject_id", using: :btree
  add_index "specializations", ["tutor_detail_id"], name: "index_specializations_on_tutor_detail_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.string "subject_name"
  end

  create_table "tutor_details", force: :cascade do |t|
    t.text     "bio"
    t.decimal  "average_review"
    t.integer  "rate"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "image"
  end

  add_index "tutor_details", ["user_id"], name: "index_tutor_details_on_user_id", using: :btree

  create_table "tutorial_subjects", force: :cascade do |t|
    t.integer  "ward_id"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tutorial_subjects", ["subject_id"], name: "index_tutorial_subjects_on_subject_id", using: :btree
  add_index "tutorial_subjects", ["ward_id"], name: "index_tutorial_subjects_on_ward_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "postal_code"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "phone_number"
    t.string   "email"
    t.string   "password_digest"
    t.string   "account_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "wards", force: :cascade do |t|
    t.string   "first_name"
    t.string   "grade_school_level"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "wards", ["user_id"], name: "index_wards_on_user_id", using: :btree

  add_foreign_key "bookings", "subjects"
  add_foreign_key "bookings", "tutor_details"
  add_foreign_key "bookings", "wards"
  add_foreign_key "reviews", "tutor_details"
  add_foreign_key "reviews", "users"
  add_foreign_key "specializations", "subjects"
  add_foreign_key "specializations", "tutor_details"
  add_foreign_key "tutor_details", "users"
  add_foreign_key "tutorial_subjects", "subjects"
  add_foreign_key "tutorial_subjects", "wards"
  add_foreign_key "wards", "users"
end
