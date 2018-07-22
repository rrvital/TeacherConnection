class EventMeeting < ApplicationRecord
  belongs_to :event
  has_many :event_rsvp
  has_many :event_favorite
end
