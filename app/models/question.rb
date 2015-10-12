class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :option_groups, dependent: :destroy
  has_many :options, through: :option_groups
  has_many :answers

  validates :query, presence: true

  accepts_nested_attributes_for :answers
end
