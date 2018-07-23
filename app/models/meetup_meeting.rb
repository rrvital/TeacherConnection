class MeetupMeeting < ApplicationRecord
  belongs_to :meetup
  has_many :meeting_rsvp
  has_many :meeting_favorite
end
