class MeetupCategory < ApplicationRecord
  belongs_to :meetup
  belongs_to :category
end
