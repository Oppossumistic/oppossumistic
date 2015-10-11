class Freeform < Question
  belongs_to :questions
  validates :short, presence :true
  validates :name, presence :true
end
