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

ActiveRecord::Schema.define(version: 20140512043620) do

  create_table "penn_course_recommendations", force: true do |t|
    t.string   "course_code"
    t.string   "rec_title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "penn_courses", force: true do |t|
    t.string   "code"
    t.string   "title"
    t.text     "des"
    t.integer  "rec_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recommendations", force: true do |t|
    t.string   "title"
    t.text     "des"
    t.string   "source"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_penn_courses", force: true do |t|
    t.string   "username"
    t.string   "course_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_confirmation", limit: 25
    t.string   "encrypted_password",    limit: 25
  end

end
