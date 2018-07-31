class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :events
 

  has_many :forum_topic
  has_many :forums, dependent: :destroy
  

  has_many :meetups  

  has_one_attached :avatar

end

