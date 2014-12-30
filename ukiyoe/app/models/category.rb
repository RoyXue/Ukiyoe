class Category < ActiveRecord::Base
	has_many :articles, depentdent: :destory, inverse_of: :category

  validates :name, presence: true
end
