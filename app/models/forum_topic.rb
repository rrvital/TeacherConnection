class ForumTopic < ApplicationRecord
  belongs_to :user
  has_many :forum_posts
  has_many :forum_topic_categories
end
