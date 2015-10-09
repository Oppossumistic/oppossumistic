class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :answers, through: :questions
<<<<<<< HEAD
  validates :title, presence: true
  accepts_nested_attributes_for :questions
  accepts_nested_attributes_for :options
  accepts_nested_attributes_for :freeforms
=======

  before_create do
    self.token = Survey.generate_token
  end

  def self.generate_token
    SecureRandom.hex(4)
  end
>>>>>>> 6f36bb5179a39150910a75e9256c3a859da83073
end
