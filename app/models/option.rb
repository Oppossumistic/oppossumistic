class Option < Question
  belongs_to :answer
  validates :allow_other, presence: true
end
