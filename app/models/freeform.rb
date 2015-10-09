class Freeform < ActiveRecord::Base
  belongs_to :answer
  validates :short, presence :true
  validates :name, presence :true
end
