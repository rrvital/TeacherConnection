class CreateForumTopicCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :forum_topic_categories do |t|
      t.belongs_to :forum_topic, foreign_key: true
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
