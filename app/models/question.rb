class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers_questions
  has_many :answers, through: :answers_questions
  has_many :dropdowns
  has_many :freeforms
  has_many :options
  has_many :dropdowns, foreign_key: 'answer_id'
  has_many :freeforms, foreign_key: 'answer_id'
  has_many :options, foreign_key: 'answer_id'

  validates :query, presence: true

  accepts_nested_attributes_for :answers
end
