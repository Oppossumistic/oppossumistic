class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :dropdowns, through: :answers
  has_many :options, through: :answers
  has_many :freeforms, through: :answers
  accepts_nested_attributes_for :answers
  validates :title, presence: true
end
