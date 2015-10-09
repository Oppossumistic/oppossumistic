class Freeform < Question
  belongs_to :answer
  validates :short, presence :true
  validates :name, presence :true
end
