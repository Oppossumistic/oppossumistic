class Option < Question
  belongs_to :question
  validates :allow_other, presence: true
end
