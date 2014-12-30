class Article < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_and_belongs_to_many :tags
	has_many :comments, inverse_of: :article

  validates :user, :category, :title, :content, presence: true

  validates :status, presence: true, inclusion: {in: %w(public draft trash), message: "%{value} not valid"}
end
