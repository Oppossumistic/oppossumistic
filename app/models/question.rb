class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers_questions, dependent: :destroy
  has_many :answers, through: :answers_questions
  has_many :dropdowns, dependent: :destroy
  has_many :freeforms, dependent: :destroy
  has_many :options, dependent: :destroy

  validates :query, presence: true

  accepts_nested_attributes_for :answers
end
