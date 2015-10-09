<<<<<<< HEAD
class Freeform < ActiveRecord::Base
  belongs_to :answer
  validates :short, presence :true
  validates :name, presence :true
=======
class Freeform < Question

>>>>>>> 99f154a92fe548cbed5862e2293b3cca32ccd8c7
end
