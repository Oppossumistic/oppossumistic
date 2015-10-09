# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do
  Survey.create!(
      name: Faker::Lorem.sentence
    )
end

100.times do
  User.create!(
    name: Faker::Name.name,
    survey_id: rand(1..50),
    password: Faker::Internet.password(8),
    email: Faker::Internet.email
    )
end

User.create!(
    name: "David Bernheisel",
    survey_id: 1,
    password: "test1234",
    email: "david@bernheisel.com"
  )
User.create!(
    name: "Julie David",
    survey_id: 2,
    password: "test1234",
    email: "julie.angela.david@gmail.com"
  )

 # create_table "answers", force: :cascade do |t|
 #    t.string   "type"
 #    t.integer  "question_id"
 #    t.datetime "created_at",  null: false
 #    t.datetime "updated_at",  null: false
 #    t.string   "taker_token"
 #  end

 #  create_table "dropdowns", force: :cascade do |t|
 #    t.integer  "question_id"
 #    t.integer  "answer_id"
 #    t.string   "name"
 #    t.boolean  "selected"
 #    t.datetime "created_at",  null: false
 #    t.datetime "updated_at",  null: false
 #  end

 #  create_table "freeforms", force: :cascade do |t|
 #    t.integer  "question_id"
 #    t.integer  "answer_id"
 #    t.text     "answer"
 #    t.boolean  "short"
 #    t.datetime "created_at",  null: false
 #    t.datetime "updated_at",  null: false
 #  end

 #  create_table "options", force: :cascade do |t|
 #    t.integer  "question_id"
 #    t.integer  "answer_id"
 #    t.string   "name"
 #    t.boolean  "selected"
 #    t.boolean  "radio"
 #    t.boolean  "allow_other"
 #    t.text     "other"
 #    t.datetime "created_at",  null: false
 #    t.datetime "updated_at",  null: false
 #  end

 #  create_table "questions", force: :cascade do |t|
 #    t.string   "type"
 #    t.string   "title"
 #    t.text     "description"
 #    t.boolean  "required"
 #    t.datetime "created_at",  null: false
 #    t.datetime "updated_at",  null: false
 #  end

