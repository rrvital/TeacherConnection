class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :forum_id
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :comments, :forum_id
  end
end