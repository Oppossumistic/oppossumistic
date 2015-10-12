class OptionGroup < ActiveRecord::Base
  has_many :options, dependent: :destroy
  has_many :questions
end
