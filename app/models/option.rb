class Option < ActiveRecord::Base
  belongs_to :question
  validates :allow_other, presence: true
end
