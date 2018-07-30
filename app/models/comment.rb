class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :forum
  belongs_to :event
  validates :user_id, presence: true
  validates :body, presence: true
  validates :event_id, presence: true
end

