class CreateForumTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :forum_topics do |t|
      t.string :name
      t.belongs_to :user, foreign_key: true
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
