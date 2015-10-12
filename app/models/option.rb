class Option < ActiveRecord::Base
  belongs_to :option_group
  validates :name, presence: true
end
