class User < ActiveRecord::Base
	has_many :articles, inverse_of: :user

  after_initialize :default

  validates :pwd, presence: true, confirmation: true, length: {minimum: 8, too_short: "password should be more than %{count} characters"}
  validates :pwd_confirmation, presence: true
  
  EMAIL_REGEX = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/i
  validates :email, presence: true, format: { :with=>EMAIL_REGEX, :message => "Invalid email address!" }

  def default
    self.profile ||="This User is too lazy to leave a word"
    self.created_at ||=Time.current
    self.updated_at ||=Time.current
  end

end
