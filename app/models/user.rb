class User < ActiveRecord::Base
  has_many :surveys
  has_many :questions, through: :surveys
  has_many :answers, through: :questions
  has_secure_password

  validates :email, presence: true,
                      uniqueness: { case_sensitive: false },
                      format: {
                        with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
                        message: "Not a valid email address",
                        on: :create
                      }
    validates :password, length: { minimum: 8 }, allow_nil: true

    def self.digest(string)
      BCrypt::Password.create(string)
    end
end
