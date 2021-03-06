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

ActiveRecord::Schema.define(version: 20151012004237) do

  create_table "answers", force: :cascade do |t|
    t.text     "answer_text"
    t.integer  "answer_int"
    t.string   "taker_token"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
  end

  create_table "checkboxes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "freeforms", force: :cascade do |t|
    t.integer  "question_id"
    t.boolean  "short",       default: true
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "option_groups", force: :cascade do |t|
    t.integer "question_id"
    t.integer "option_id"
  end

  create_table "options", force: :cascade do |t|
    t.integer  "option_group_id"
    t.string   "name"
    t.string   "type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "query"
    t.text     "description"
    t.boolean  "required"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "survey_id"
  end

  create_table "radios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "token"
    t.text     "description"
    t.integer  "user_id"
    t.boolean  "published",   default: false
  end

  create_table "trueleans", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
