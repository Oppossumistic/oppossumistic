class Question < ActiveRecord::Base
  belongs_to :survey
  validates :title, presence: true
  attr_accessor :question_starter
end
