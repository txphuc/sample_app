class User < ApplicationRecord
  EMAIL_REGEX = Settings.regex.email.freeze

  validates :name, presence: true,
            length: {maximum: Settings.length.name_max_length}
  validates :email, presence: true,
            length: {maximum: Settings.length.email_max_length},
            format: {with: EMAIL_REGEX}, uniqueness: true
  validates :password_digest, presence: true,
            length: {minimum: Settings.length.password_min_length}

  before_save :downcase_email

  private

  has_secure_password

  def downcase_email
    email.downcase!
  end
end
