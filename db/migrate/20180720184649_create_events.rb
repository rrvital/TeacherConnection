class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.string :description
      t.string :address
      t.boolean :monthly
      t.boolean :weekly
      t.string :start
      t.string :end

      t.timestamps
    end
  end
end
