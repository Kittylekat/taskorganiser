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

ActiveRecord::Schema.define(version: 20161107141204) do

  create_table "colors", force: :cascade do |t|
    t.string   "name"
    t.string   "rgb"
    t.string   "hex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "task_id"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "timetable_id"
    t.integer  "colors_id"
  end

  create_table "timetables", force: :cascade do |t|
    t.integer  "task_id"
    t.string   "taskname"
    t.date     "startdate"
    t.date     "enddate"
    t.string   "weekday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "timetables", ["task_id"], name: "index_timetables_on_task_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
