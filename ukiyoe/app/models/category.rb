class Category < ActiveRecord::Base
	has_many :articles, dependent: :destroy, inverse_of: :category

  validates :name, presence: true
end
