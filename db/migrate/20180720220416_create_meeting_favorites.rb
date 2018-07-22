class CreateMeetingFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :meeting_favorites do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :meetup_meeting, foreign_key: true

      t.timestamps
    end
  end
end
