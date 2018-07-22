class CreateEventFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :event_favorites do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :event_meeting, foreign_key: true

      t.timestamps
    end
  end
end
