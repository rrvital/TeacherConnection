class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
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

  has_one_attached :avatar
  # , :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :avatar, :content_type => ["image/jpeg", "image/gif", "image/png"]
end

