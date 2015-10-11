class Question < ActiveRecord::Base
  belongs_to :survey
  accepts_nested_attributes_for :answers
  validates :query, presence: true
  has_many :questions_answers
  has_many :answers, through: :questions_answers
  has_many :dropdowns
  has_many :freeforms
  has_many :options
end
