<<<<<<< HEAD
class Option < ActiveRecord::Base
  belongs_to :answer
  validates :allow_other, presence: true
=======
class Option < Question

>>>>>>> 99f154a92fe548cbed5862e2293b3cca32ccd8c7
end
