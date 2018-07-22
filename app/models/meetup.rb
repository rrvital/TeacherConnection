class Meetup < ApplicationRecord
  belongs_to :user
  has_many :meetup_meeting
  has_many :meetup_category
end
