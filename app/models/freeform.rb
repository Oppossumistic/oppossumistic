class Freeform < ActiveRecord::Base
  belongs_to :question
  validates :short, presence :true
  validates :answer, presence :true
end
