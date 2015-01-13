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

ActiveRecord::Schema.define(version: 20150113012439) do

  create_table "additional_day_infos", force: :cascade do |t|
    t.date     "day"
    t.string   "style"
    t.integer  "year_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "additional_day_infos", ["year_id"], name: "index_additional_day_infos_on_year_id"

  create_table "contracts", force: :cascade do |t|
    t.string   "post"
    t.string   "rate"
    t.string   "budget"
    t.string   "style"
    t.date     "start"
    t.date     "finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dep_people", force: :cascade do |t|
    t.integer  "department_id"
    t.integer  "contract_id"
    t.integer  "person_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "dep_people", ["contract_id"], name: "index_dep_people_on_contract_id"
  add_index "dep_people", ["department_id"], name: "index_dep_people_on_department_id"
  add_index "dep_people", ["person_id"], name: "index_dep_people_on_person_id"

  create_table "departments", force: :cascade do |t|
    t.string   "style"
    t.string   "name"
    t.string   "director"
    t.string   "responsible"
    t.integer  "year_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "departments", ["year_id"], name: "index_departments_on_year_id"

  create_table "departments_users", id: false, force: :cascade do |t|
    t.integer "department_id", null: false
    t.integer "user_id",       null: false
  end

  create_table "note_styles", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.boolean  "style"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "note_styles_notes", id: false, force: :cascade do |t|
    t.integer "note_id",       null: false
    t.integer "note_style_id", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.date     "start"
    t.date     "finish"
    t.integer  "dep_person_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "notes", ["dep_person_id"], name: "index_notes_on_dep_person_id"

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "second_name"
    t.string   "last_name"
    t.integer  "external_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "second_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "crypted_password"
    t.string   "salt"
    t.boolean  "is_operator"
    t.boolean  "is_admin"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "years", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_current"
    t.string   "month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
