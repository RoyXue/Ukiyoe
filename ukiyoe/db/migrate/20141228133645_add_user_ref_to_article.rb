class AddUserRefToArticle < ActiveRecord::Migration
  def change
    # Add relationship inside Articles
	  add_reference :articles, :user, index: true
    add_reference :articles, :category, index: true

	  # Add relationshio inside Comments
	  add_reference :comments, :article, index: true
	  
	  # Create m2m table
    create_table :articles_tags, id: false do |t|
      t.belongs_to :article
      t.belongs_to :tag
    end
  end
end
