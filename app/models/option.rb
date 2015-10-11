class Option < ActiveRecord::Base
  belongs_to :options_questions
  validates :name, presence: true
  validates :type, presence: true
end
