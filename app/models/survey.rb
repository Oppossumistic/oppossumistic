class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :answers, through: :questions

  before_create do
    self.token = Survey.generate_token
  end

  def self.generate_token
    SecureRandom.hex(4)
  end
end
