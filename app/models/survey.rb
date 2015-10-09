class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :answers, through: :questions
  validates :title, presence: true
  accepts_nested_attributes_for :questions
  accepts_nested_attributes_for :options
  accepts_nested_attributes_for :freeforms
end
