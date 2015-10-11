class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions, dependent: :destroy
  has_many :freeforms, through: :questions
  has_many :options_questions, through: :questions
  has_many :options, through: :questions
  has_many :answers_questions, through: :questions
  has_many :answers, through: :answers_questions
  validates :title, presence: true
  validates :user_id, presence: true
  accepts_nested_attributes_for :questions, reject_if: :all_blank
  accepts_nested_attributes_for :options
  accepts_nested_attributes_for :freeforms
  accepts_nested_attributes_for :dropdowns
  accepts_nested_attributes_for :options

  before_create :generate_token

  attr_accessor :question_starter

  protected
  def generate_token
    self.token = loop do
      random_token = SecureRandom.hex(4)
      break random_token unless self.class.exists?(token: random_token)
    end
  end

end
