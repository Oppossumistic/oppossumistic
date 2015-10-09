class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :answers, through: :questions
  validates :title, presence: true
  accepts_nested_attributes_for :questions

  before_create :generate_token

  protected
  def generate_token
    self.token = loop do
      random_token = SecureRandom.hex(4)
      break random_token unless self.class.exists?(token: random_token)
    end
  end

end
