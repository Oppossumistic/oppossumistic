class OptionGroup < ActiveRecord::Base
  has_many :options
  has_many :questions
end
