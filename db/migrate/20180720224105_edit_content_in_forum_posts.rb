class EditContentInForumPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :forum_posts, :content, :text
  end
end
