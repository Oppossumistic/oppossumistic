class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions, dependent: :destroy
  has_many :freeforms, through: :questions
  has_many :option_groups, through: :questions
  validates :title, presence: true
  validates :user_id, presence: true
  accepts_nested_attributes_for :questions, reject_if: :all_blank
  accepts_nested_attributes_for :option_groups
  accepts_nested_attributes_for :freeforms

  before_create :generate_token

  protected
  def generate_token
    self.token = loop do
      random_token = SecureRandom.hex(4)
      break random_token unless self.class.exists?(token: random_token)
    end
  end

end
