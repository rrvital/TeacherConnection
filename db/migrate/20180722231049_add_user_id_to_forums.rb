class AddUserIdToForums < ActiveRecord::Migration[5.2]
  def change
    add_column :forums, :user_id, :integer
    add_index :forums, :user_id
  end
end
