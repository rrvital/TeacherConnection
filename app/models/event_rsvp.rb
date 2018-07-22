class EventRsvp < ApplicationRecord
  belongs_to :user
  belongs_to :event, trough: :event_meetings
  belongs_to :event_meeting
end
