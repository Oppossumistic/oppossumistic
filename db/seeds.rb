# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Question.destroy_all
Survey.destroy_all



User.create!(
    name: "David Bernheisel",
    password: "test1234",
    email: "david@bernheisel.com"
  )
User.create!(
    name: "Julie David",
    password: "test1234",
    email: "julie.angela.david@gmail.com"
  )

100.times do
  User.create!(
    name: Faker::Name.name,
    password: Faker::Internet.password(8),
    email: Faker::Internet.email
    )
end

users = User.all
50.times do
  Survey.create!(
      title: Faker::Lorem.sentence,
      description: Faker::Lorem.paragraphs.join("\n"),
      user_id: users.sample.id
    )
end

8.times do
  Survey.create!(
      title: Faker::Lorem.sentence,
      description: Faker::Lorem.paragraphs.join("\n"),
      user_id: [1,2].sample
    )
end

surveys = Survey.all

300.times do
  Question.create!(
    query: Faker::Lorem.sentence(3).last = "?",
    description: Faker::Lorem.paragraphs.join("\n"),
    required: [true, false].sample,
    survey_id: surveys.sample.id
  )
end

600.times do
  Option.create!(
    name: Faker::Lorem.sentence(1),
    option_group_id: rand(101..200),
    type: ["Dropdown", "Radio", "Checkbox", "Truelean"].sample
  )
end

600.times do |i|
  OptionGroup.create!(
    question_id: (1..300).to_a.sample,
    option_id: i
  )
end

100.times do
  Freeform.create!(
    question_id: rand(201..300),
    short: [true, false].sample
  )
end

