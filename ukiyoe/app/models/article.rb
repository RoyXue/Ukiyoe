class Article < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_and_belongs_to_many :tags
	has_many :comments, inverse_of: :article

  after_initialize :default

  validates :user, :category, :title, :content, presence: true

  validates :status, presence: true, inclusion: {in: %w(public draft trash), message: "%{value} not valid"}

  def default
    self.status ||= "public"
    self.create_at ||= Time.current
    self.last_edit ||= Time.current
    self.like || = 0
  end
end
