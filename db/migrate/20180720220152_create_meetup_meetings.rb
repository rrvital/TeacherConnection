class CreateMeetupMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetup_meetings do |t|
      t.string :title
      t.text :description
      t.string :address
      t.string :start
      t.string :end
      t.belongs_to :meetup, foreign_key: true

      t.timestamps
    end
  end
end
