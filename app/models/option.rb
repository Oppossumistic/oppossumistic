class Option < ActiveRecord::Base
  belongs_to :answer
  validates :allow_other, presence: true
end
