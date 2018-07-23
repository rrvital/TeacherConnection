class EventFavorite < ApplicationRecord
  belongs_to :user
  belongs_to :event_meeting
end
