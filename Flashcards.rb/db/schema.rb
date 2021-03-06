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

ActiveRecord::Schema.define(version: 20150420002736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id"
    t.string   "text",        limit: 100, null: false
    t.datetime "deleted_at"
  end

  add_index "answers", ["deleted_at"], name: "index_answers_on_deleted_at", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",             limit: 100,             null: false
    t.integer  "play_count",       limit: 2,   default: 0, null: false
    t.integer  "cumulative_score", limit: 2,   default: 0, null: false
    t.datetime "deleted_at"
  end

  add_index "categories", ["deleted_at"], name: "index_categories_on_deleted_at", using: :btree

  create_table "questions", force: :cascade do |t|
    t.integer  "category_id"
    t.text     "text",                                      null: false
    t.integer  "correct_count",   limit: 2, default: 0,     null: false
    t.integer  "incorrect_count", limit: 2, default: 0,     null: false
    t.boolean  "last_attempt",              default: false, null: false
    t.datetime "deleted_at"
  end

  add_index "questions", ["deleted_at"], name: "index_questions_on_deleted_at", using: :btree

end
