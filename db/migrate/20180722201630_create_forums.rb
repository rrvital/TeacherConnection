class CreateForums < ActiveRecord::Migration[5.2]
  def change
    create_table :forums do |t|
      t.string :title
      t.string :url
      t.string :description

      t.timestamps
    end
  end
end
