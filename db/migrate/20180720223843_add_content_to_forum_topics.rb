class AddContentToForumTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :forum_topics, :content, :text
  end
end
