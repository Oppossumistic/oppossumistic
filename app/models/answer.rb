class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :dropdowns
  has_many :options
  has_many :freeforms

end
