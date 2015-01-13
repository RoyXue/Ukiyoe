class Comment < ActiveRecord::Base
	belongs_to :article
  after_initialize :default

  validates :content, presence: true

  def default
    self.created_at ||= Time.current
  end

end
