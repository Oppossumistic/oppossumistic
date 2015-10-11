class Freeform < Question
  belongs_to :question
  validates :short, presence :true
  validates :name, presence :true
end
