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

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end



