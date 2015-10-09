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

ActiveRecord::Schema.define(version: 20151009134657) do

  create_table "answers", force: :cascade do |t|
    t.string   "type"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "taker_token"
  end

  create_table "freeforms", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "answer_id"
    t.text     "answer"
    t.boolean  "short"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "options", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "answer_id"
    t.string   "name"
    t.boolean  "selected"
    t.boolean  "radio"
    t.boolean  "allow_other"
    t.text     "other"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "name"
    t.integer  "question_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "survey_token"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "survey_id"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end