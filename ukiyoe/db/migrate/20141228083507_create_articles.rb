class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.datetime :create_at
      t.datetime :last_edit
      t.string :status
      t.integer :like

      t.timestamps
    end
  end
end
