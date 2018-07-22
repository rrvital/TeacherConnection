class CreateEventRsvps < ActiveRecord::Migration[5.2]
  def change
    create_table :event_rsvps do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :event_meeting, foreign_key: true
      t.boolean :coming

      t.timestamps
    end
  end
end
