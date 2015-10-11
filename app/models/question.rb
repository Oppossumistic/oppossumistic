class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :questions_answers
  has_many :answers, through: :questions_answers
  has_many :dropdowns
  has_many :freeforms
  has_many :options

  validates :query, presence: true
end
