class User < ActiveRecord::Base
	has_many :articles, inverse_of: :user

  after_initialize :default

  validates :pwd, presence: true, confirmation: true, length: {minimum: 8, too_short: "password should be more than %{count} characters"}
  validates :pwd_confirmation, presence: true

  validates :email, confirmation: true, format: { with: /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/, message: "Invalid email address!" }
  validates :email_comfirmation, presence: true

  def default
    self.profile ||="This User is too lazy to leave a word"
  end

end
