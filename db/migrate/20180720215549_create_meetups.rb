class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.text :description
      t.string :address
      t.boolean :weekly
      t.boolean :monthly
      t.string :start
      t.string :end

      t.timestamps
    end
  end
end
