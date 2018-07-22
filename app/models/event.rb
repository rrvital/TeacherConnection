class Event < ApplicationRecord
  belongs_to :user
  has_many :event_categories
  has_many :categories, through: :event_categories
  has_many :event_meetings
  # has_many :users, through: :event_rsvps # TODO ?? double check relationship
end
