class CreateEventMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :event_meetings do |t|
      t.belongs_to :event, foreign_key: true
      t.string :title
      t.text :description
      t.string :address
      t.string :start
      t.string :end

      t.timestamps
    end
  end
end
