class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :events
  has_many :event_rsvp
  has_many :event_favorite

  has_many :forum_topic
  has_many :forums, dependent: :destroy
  
  has_many :meeting_favorite
  has_many :meeting_rsvp
  has_many :meetups  
  
end

