class CreateForumPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :forum_posts do |t|
      t.text :content
      t.belongs_to :user, foreign_key: true
      t.belongs_to :forum_topic, foreign_key: true

      t.timestamps
    end
  end
end
